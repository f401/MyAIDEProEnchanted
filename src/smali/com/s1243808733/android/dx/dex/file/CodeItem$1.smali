.class Lcom/s1243808733/android/dx/dex/file/CodeItem$1;
.super Ljava/lang/Object;
.source "CodeItem.java"

# interfaces
.implements Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/android/dx/dex/file/CodeItem;->place0(Lcom/s1243808733/android/dx/dex/file/Section;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/android/dx/dex/file/CodeItem;

.field final val$file:Lcom/s1243808733/android/dx/dex/file/DexFile;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/dex/file/CodeItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem$1;->this$0:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem$1;->val$file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem$1;->val$file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->findItemOrNull(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, -0x1

    return p1

    .line 199
    :cond_a
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->getIndex()I

    move-result p1

    return p1
.end method
