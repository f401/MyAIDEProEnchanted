.class public final Lcom/s1243808733/android/dx/dex/file/HeaderSection;
.super Lcom/s1243808733/android/dx/dex/file/UniformItemSection;
.source "HeaderSection.java"


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/s1243808733/android/dx/dex/file/HeaderItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .registers 4

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/s1243808733/android/dx/dex/file/UniformItemSection;-><init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V

    .line 39
    new-instance p1, Lcom/s1243808733/android/dx/dex/file/HeaderItem;

    invoke-direct {p1}, Lcom/s1243808733/android/dx/dex/file/HeaderItem;-><init>()V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/s1243808733/android/dx/dex/file/HeaderItem;->setIndex(I)V

    .line 42
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/HeaderSection;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public get(Lcom/s1243808733/android/dx/rop/cst/Constant;)Lcom/s1243808733/android/dx/dex/file/IndexedItem;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public items()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/s1243808733/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/HeaderSection;->list:Ljava/util/List;

    return-object v0
.end method

.method protected orderItems()V
    .registers 1

    return-void
.end method
