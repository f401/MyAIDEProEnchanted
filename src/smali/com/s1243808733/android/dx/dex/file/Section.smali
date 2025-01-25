.class public abstract Lcom/s1243808733/android/dx/dex/file/Section;
.super Ljava/lang/Object;
.source "Section.java"


# instance fields
.field private final alignment:I

.field private final file:Lcom/s1243808733/android/dx/dex/file/DexFile;

.field private fileOffset:I

.field private final name:Ljava/lang/String;

.field private prepared:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/s1243808733/android/dx/dex/file/DexFile;I)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_15

    .line 73
    invoke-static {p3}, Lcom/s1243808733/android/dx/dex/file/Section;->validateAlignment(I)V

    .line 75
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->name:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/Section;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 77
    iput p3, p0, Lcom/s1243808733/android/dx/dex/file/Section;->alignment:I

    .line 78
    const/4 p1, -0x1

    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    .line 79
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->prepared:Z

    return-void

    .line 70
    :cond_15
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "file == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static validateAlignment(I)V
    .registers 2

    if-lez p0, :cond_8

    add-int/lit8 v0, p0, -0x1

    and-int/2addr p0, v0

    if-nez p0, :cond_8

    return-void

    .line 55
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid alignment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final align(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 3

    .line 263
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->alignment:I

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->alignTo(I)V

    return-void
.end method

.method public abstract getAbsoluteItemOffset(Lcom/s1243808733/android/dx/dex/file/Item;)I
.end method

.method public final getAbsoluteOffset(I)I
    .registers 3

    if-ltz p1, :cond_10

    .line 184
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    if-ltz v0, :cond_8

    add-int/2addr v0, p1

    return v0

    .line 185
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset not yet set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 181
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "relative < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAlignment()I
    .registers 2

    .line 97
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->alignment:I

    return v0
.end method

.method public final getFile()Lcom/s1243808733/android/dx/dex/file/DexFile;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    return-object v0
.end method

.method public final getFileOffset()I
    .registers 3

    .line 107
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    if-ltz v0, :cond_5

    return v0

    .line 108
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final getName()Ljava/lang/String;
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->name:Ljava/lang/String;

    return-object v0
.end method

.method public abstract items()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/s1243808733/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation
.end method

.method public final prepare()V
    .registers 2

    .line 212
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/Section;->throwIfPrepared()V

    .line 213
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/Section;->prepare0()V

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->prepared:Z

    return-void
.end method

.method protected abstract prepare0()V
.end method

.method public final setFileOffset(I)I
    .registers 3

    if-ltz p1, :cond_19

    .line 128
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    if-gez v0, :cond_11

    .line 132
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->alignment:I

    add-int/lit8 v0, v0, -0x1

    add-int/2addr p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    .line 135
    iput p1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    return p1

    .line 129
    :cond_11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "fileOffset already set"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fileOffset < 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final throwIfNotPrepared()V
    .registers 3

    .line 242
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->prepared:Z

    if-eqz v0, :cond_5

    return-void

    .line 243
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final throwIfPrepared()V
    .registers 3

    .line 252
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->prepared:Z

    if-nez v0, :cond_5

    return-void

    .line 253
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract writeSize()I
.end method

.method public final writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 6

    .line 146
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/Section;->throwIfNotPrepared()V

    .line 147
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/Section;->align(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 149
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result v0

    .line 151
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    if-gez v1, :cond_11

    .line 152
    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    goto :goto_13

    :cond_11
    if-ne v1, v0, :cond_40

    .line 159
    :goto_13
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 160
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->name:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\n"

    if-eqz v1, :cond_37

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_3c

    :cond_37
    if-eqz v0, :cond_3c

    .line 163
    invoke-interface {p1, v2, v3}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 167
    :cond_3c
    :goto_3c
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/Section;->writeTo0(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    return-void

    .line 154
    :cond_40
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "alignment mismatch: for "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", at "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but expected "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract writeTo0(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
.end method
