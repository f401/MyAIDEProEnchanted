.class Lcom/google/common/collect/ArrayTable$Row;
.super Lcom/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/ArrayTable$ArrayMap",
        "<TC;TV;>;"
    }
.end annotation


# instance fields
.field final rowIndex:I

.field final this$0:Lcom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lcom/google/common/collect/ArrayTable;I)V
    .registers 5

    .line 670
    iput-object p1, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    .line 671
    invoke-static {p1}, Lcom/google/common/collect/ArrayTable;->access$600(Lcom/google/common/collect/ArrayTable;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ArrayTable$1;)V

    .line 672
    iput p2, p0, Lcom/google/common/collect/ArrayTable$Row;->rowIndex:I

    .line 673
    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .registers 2

    .line 677
    const-string v0, "Column"

    return-object v0
.end method

.method getValue(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 682
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$Row;->rowIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lcom/google/common/collect/ArrayTable$Row;->this$0:Lcom/google/common/collect/ArrayTable;

    iget v1, p0, Lcom/google/common/collect/ArrayTable$Row;->rowIndex:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
