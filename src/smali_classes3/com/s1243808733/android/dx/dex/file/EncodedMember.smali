.class public abstract Lcom/s1243808733/android/dx/dex/file/EncodedMember;
.super Ljava/lang/Object;
.source "EncodedMember.java"

# interfaces
.implements Lcom/s1243808733/android/dx/util/ToHuman;


# instance fields
.field private final accessFlags:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMember;->accessFlags:I

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

.method public abstract debugPrint(Ljava/io/PrintWriter;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract encode(Lcom/s1243808733/android/dx/dex/file/DexFile;Lcom/s1243808733/android/dx/util/AnnotatedOutput;II)I
.end method

.method public final getAccessFlags()I
    .registers 2

    .line 47
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/EncodedMember;->accessFlags:I

    return v0
.end method

.method public abstract getName()Lcom/s1243808733/android/dx/rop/cst/CstString;
.end method
