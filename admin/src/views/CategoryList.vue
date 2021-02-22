<template>
  <div>
    <h1>分类列表</h1>
    <el-card>
      <el-button type="primary" icon="el-icon-plus" @click="addDialogVisible= true">添加分类</el-button>

        <tree-table
          :data="cates"
          show-index
          index-text="序号"
          :columns="columns"
          :expand-type="false"
          :selection-type="false"
          children-prop='child'
          border
        >
          <template slot="operate" slot-scope="scope">
            <el-button size="mini" type="primary" icon="el-icon-edit" @click="editCate(scope.row)">编辑</el-button>
            <el-button size="mini" type="danger" icon="el-icon-delete" @click="delCate(scope.row)">删除</el-button>
          </template>
        </tree-table>
    </el-card>
    
    <!-- 添加分类对话框 -->
    <el-dialog title="添加分类" :visible.sync="addDialogVisible" width="50%" @closed="addDialogClose">
      <el-form label-width="80px">
        <el-form-item label="分类名称">
          <el-input maxlength="10" v-model.trim="cate.name"></el-input>
        </el-form-item>
        <el-form-item label="选择分类">
          <el-cascader
            :props="cateProps"
            :options="cates"
            v-model="cate.parent"
            clearable
          ></el-cascader>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="addDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="handelAdd">确 定</el-button>
      </span>
    </el-dialog>

    <!-- 编辑分类对话框 -->
    <el-dialog title="编辑分类" :visible.sync="editDialogVisible" @closed="cate = {}" width="50%">
      <el-form label-width="70px">
        <el-form-item label="分类名称">
          <el-input v-model="cate.name"></el-input>
        </el-form-item>
      </el-form>
      <span slot="footer" class="dialog-footer">
        <el-button @click="editDialogVisible = false">取 消</el-button>
        <el-button type="primary" @click="handleEdit">确 定</el-button>
      </span>
    </el-dialog>

  </div>
</template>

<script>
export default {
  data() {
    return {
      cates: [],
      cate:{},
      addDialogVisible:false,
      editDialogVisible:false,
      cateProps: {
        expandTrigger: 'hover',
        value: '_id',
        label: 'name',
        children: 'child',
        emitPath: false,
        checkStrictly: true
      },
      columns: [
        {
          label: '分类名称',
          prop: 'name',
          align: 'center',
          headerAlign: 'center'
        },
        {
          label: '操作',
          type: 'template',
          template: 'operate',
          align: 'center',
          headerAlign: 'center'
        }
      ],
    };
  },
  methods: {
    async fetch() {
      const res = await this.$http.get("rest/categories");
      this.cates = res.data;
      console.log(this.cates)
      // console.log(this.items);
    },
    addDialogClose() {
      this.cate = {}
    },
    async handelAdd(){
      const res = await this.$http.post("rest/categories", this.cate);
      if (!res) return 
      this.$message.success('添加分类成功')
      this.fetch()
      this.addDialogVisible = false
    },
    async handleEdit(){
      const res = await this.$http.put(`rest/categories/${this.id}`, this.cate);
      if (!res) return 
      this.$message.success('编辑分类成功')
      this.fetch()
      this.editDialogVisible = false
    },
    async delCate(row){
       try {
        await this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        })

        if (row.child && row.child.length > 0) return this.$message.error('无法删除包含子分类的父级分类')

        const res = await this.$http.delete(`rest/categories/${row._id}`);
        if (!res) return 
        this.$message.success('删除分类成功')
        this.fetch()
      } catch (error) {
        this.$message.info('已取消删除')
      }
    },
    async editCate(row){
      this.id = row._id
      const res = await this.$http.get(`rest/categories/${this.id}`);
      console.log(res.data);
      this.cate = res.data
      this.editDialogVisible = true
    }
  },

  created() {
    this.fetch();
  }
};
</script>

<style></style>
