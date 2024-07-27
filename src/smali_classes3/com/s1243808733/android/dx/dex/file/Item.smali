.class public abstract Lcom/s1243808733/android/dx/dex/file/Item;
.super Ljava/lang/Object;
.source "Item.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            ")V"
        }
    .end annotation
.end method

.method public abstract itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;
.end method

.method public final typeName()Ljava/lang/String;
    .registers 2

    .line 47
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/Item;->itemType()Lcom/s1243808733/android/dx/dex/file/ItemType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/android/dx/dex/file/ItemType;->toHuman()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract writeSize()I
.end method

.method public abstract writeTo(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/dex/file/DexFile;",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation
.end method
