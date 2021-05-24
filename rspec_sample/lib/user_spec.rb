# user.rb（テストの対象となるファイル）を読み込むための記述
require_relative '../lib/user'

# テストを実行するためのおきまりの書き方
Rspec.describe User do
  #テストの内容
  describe "Userクラスの情報" do
    # 名前がTanakaの場合のUserオブジェクトに対するテスト
    context "名前がTanakaの場合"
      #テストの期待値
      it "return user name" do
        #テスト対象となるUserクラスをオブジェクト化
        user = User.new(name: "Tanaka", age: 31, hobby: "Soccor")
        #テストコード(名前と期待値と一致することを確認)
        expect(user.name).to eq "Tanaka"
      end
      it "return user age" do
        user = User.new(name: "Tanaka", age: 31, hobby: "Soccor")
        #テストコード(年齢と期待値と一致することを確認)
        expect(user.age).to eq 31
      end
      it "return user hobby" do
        user = User.new(name: "Tanaka", age: 31, hobby: "Soccor")
        #テストコード(趣味と期待値と一致することを確認)
        expect(user.hobby).to eq "Soccor"
      end
    end
    # 名前がSuzukiの場合のUserオブジェクトに対するテスト
    context "名前がSuzukiの場合" do
      it "return user name" do
        user = User.new(name: "Suzuki", age: 31, hobby: "Soccor")
        expect(user.name).to eq "Suzuki"
      end
      it "return user age" do
        user = User.new(name: "Tanaka", age: 31, hobby: "Soccor")
        #テストコード(年齢と期待値と一致することを確認)
        expect(user.age).to eq 31
      end
      it "return user hobby" do
        user = User.new(name: "Tanaka", age: 31, hobby: "Soccor")
        #テストコード(趣味と期待値と一致することを確認)
        expect(user.hobby).to eq "Soccor"
      end
    end
  end
end

