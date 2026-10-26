.class public abstract Lcom/s1243808733/android/dx/dex/file/IdItem;
.super Lcom/s1243808733/android/dx/dex/file/IndexedItem;
.source "IdItem.java"


# instance fields
.field private final type:Lcom/s1243808733/android/dx/rop/cst/CstType;


# direct methods
.method public constructor <init>(Lcom/s1243808733/android/dx/rop/cst/CstType;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/s1243808733/android/dx/dex/file/IndexedItem;-><init>()V

    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/IdItem;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addContents(Lcom/s1243808733/android/dx/dex/file/DexFile;)V
    .locals 2

    .line 48
    invoke-virtual {p1}, Lcom/s1243808733/android/dx/dex/file/DexFile;->getTypeIds()Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/IdItem;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    invoke-virtual {v0, v1}, Lcom/s1243808733/android/dx/dex/file/TypeIdsSection;->intern(Lcom/s1243808733/android/dx/rop/cst/CstType;)Lcom/s1243808733/android/dx/dex/file/TypeIdItem;

    return-void
.end method

.method public final getDefiningClass()Lcom/s1243808733/android/dx/rop/cst/CstType;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/IdItem;->type:Lcom/s1243808733/android/dx/rop/cst/CstType;

    return-object v0
.end method
