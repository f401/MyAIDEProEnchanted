.class Lcom/google/common/collect/ArrayTable$2;
.super Lcom/google/common/collect/Tables$AbstractCell;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/ArrayTable;->getCell(I)Lcom/google/common/collect/Table$Cell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Tables$AbstractCell",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field final columnIndex:I

.field final rowIndex:I

.field final this$0:Lcom/google/common/collect/ArrayTable;

.field final val$index:I


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .registers 5

    .line 534
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$2;->this$0:Lcom/google/common/collect/ArrayTable;

    iput p2, p0, Lcom/google/common/collect/ArrayTable$2;->val$index:I

    invoke-direct {p0}, Lcom/google/common/collect/Tables$AbstractCell;-><init>()V

    .line 535
    iget v0, p0, Lcom/google/common/collect/ArrayTable$2;->val$index:I

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$2;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ArrayTable$2;->rowIndex:I

    .line 536
    iget v0, p0, Lcom/google/common/collect/ArrayTable$2;->val$index:I

    iget-object v1, p0, Lcom/google/common/collect/ArrayTable$2;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v1}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/google/common/collect/ArrayTable$2;->columnIndex:I

    return-void
.end method


# virtual methods
.method public getColumnKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$2;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$100(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$2;->columnIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getRowKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 540
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$2;->this$0:Lcom/google/common/collect/ArrayTable;

    invoke-static {v0}, Lcom/google/common/collect/ArrayTable;->access$200(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/ArrayTable$2;->rowIndex:I

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$2;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$2;->rowIndex:I

    iget v2, p0, Lcom/google/common/collect/ArrayTable$2;->columnIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
