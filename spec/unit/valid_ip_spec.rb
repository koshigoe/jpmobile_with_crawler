require File.join(File.dirname(__FILE__), 'spec_helper')

describe 'Jpmobile::Mobile::valid_ip?' do

  Spec::Fixture::Base.new self, :remote_ip => :carrier do
    it 'should be return true if :remote_ip is in :carrier address' do |remote_ip, carrier|
      Jpmobile::Mobile.const_get(carrier).valid_ip?(remote_ip).should == true
    end

    set_fixtures([
      [ '72.14.199.1'     => :Google    ],
      [ '209.85.238.1'    => :Google    ],
      [ '124.83.159.146'  => :Yahoo     ],
      [ '124.83.159.224'  => :Yahoo     ],
      [ '203.104.254.1'   => :Livedoor  ],
      [ '210.150.10.32'   => :Goo       ],
    ])
  end.run

  Spec::Fixture::Base.new self, :remote_ip => :carrier do
    it 'should not be return true if :remote_ip is in :carrier address' do |remote_ip, carrier|
      Jpmobile::Mobile.const_get(carrier).valid_ip?(remote_ip).should_not == true
    end

    set_fixtures([
      [ '72.14.199.128'   => :Google    ],
      [ '209.85.238.128'  => :Google    ],
      [ '124.83.159.145'  => :Yahoo     ],
      [ '124.83.159.223'  => :Yahoo     ],
      [ '203.104.253.1'   => :Livedoor  ],
      [ '210.150.10.64'   => :Goo       ],
    ])
  end.run
end
