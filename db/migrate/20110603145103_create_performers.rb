class CreatePerformers < ActiveRecord::Migration
  def self.up
    create_table :performers do |t|
      t.string :first_name
      t.string :last_name
      t.string :origin
      t.timestamps
    end
    [
     ['Ksenia','Zhuleva','Russia'],
     ['Wenting', 'Kang', 'China'],
     ['Hyobi', 'Sim', 'South Korea'],
     ['Ruiqing', 'Tang', 'China'],
     ['Yi', 'Zhou', 'China'],
     ['Bogdan', 'Banu', 'Romania'],
     ['Yi Fei', 'Deng', 'China'],
     ['Lauriane', 'David', 'France'],
     ['Da Kyung', 'Kwak', 'South Korea'],
     ['Kimi', 'Makino', 'Japan'],
     ['Daniel', 'Palmizio', 'Italy'],
     ['Amanda', 'Verner', 'New Zealand'],
     ['Minjung', 'Chun', 'South Korea'],
     ['Daniel', 'Getz', 'USA'],
     ['Elias', 'Goldstein', 'USA/Norway'],
     ['Daniel', 'Hanul Lee', 'Canada'],
     ['Sang Hyun', 'Yong', 'South Korea'],
     ['Matthew', 'Lipman', 'USA'],
     ['Wolfram', 'Hauser', 'Germany'],
     ['Cong', 'Wu', 'China'],
     ['Ayane', 'Kozasa', 'USA'],
     ['Eri', 'Sugita', 'Japan'],
     ['Adrien', 'La Marca', 'France'],
     ['Vicki', 'Powell', 'USA'],
     ['Jing', 'Yang', 'China'],
     ['On You', 'Kim', 'South Korea'],
     ['Min-kyung', 'Sung', 'South Korea'],
     ['Keju', 'Wang', 'China'],
     ['Rachel', 'Ku', 'Taiwan']
    ].each do |x|
      Performer.create :first_name => x[0], :last_name => x[1], :origin => x[2]
    end
  end

  def self.down
    drop_table :performers
  end
end
