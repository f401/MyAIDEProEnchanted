.class Lcom/s1243808733/android/dx/dex/file/CodeItem$100000000;
.super Ljava/lang/Object;
.source "CodeItem.java"

# interfaces
.implements Lcom/s1243808733/android/dx/dex/code/DalvCode$AssignIndicesCallback;


# instance fields
.field private final this$0:Lcom/s1243808733/android/dx/dex/file/CodeItem;

.field private final val$file:Lcom/s1243808733/android/dx/dex/file/DexFile;


# direct methods
.method constructor <init>(Lcom/s1243808733/android/dx/dex/file/CodeItem;Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem$100000000;->this$0:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem$100000000;->val$file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    return-void
.end method

.method static access$0(Lcom/s1243808733/android/dx/dex/file/CodeItem$100000000;)Lcom/s1243808733/android/dx/dex/file/CodeItem;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem$100000000;->this$0:Lcom/s1243808733/android/dx/dex/file/CodeItem;

    return-object v0
.end method


# virtual methods
.method public getIndex(Lcom/s1243808733/android/dx/rop/cst/Constant;)I
    .registers 3
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/CodeItem$100000000;->val$file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    invoke-virtual {v0, p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->findItemOrNull(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;

    move-result-object v0

    .line 196
    if-nez v0, :cond_0

    .line 197
    const/4 v0, -0x1

    .line 199
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;->getIndex()I

    move-result v0

    goto :goto_0
.end method
