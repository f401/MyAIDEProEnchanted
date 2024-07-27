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
    .registers 6

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-nez p2, :cond_0

    .line 70
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "file == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    invoke-static {p3}, Lcom/s1243808733/android/dx/dex/file/Section;->validateAlignment(I)V

    .line 75
    iput-object p1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->name:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/s1243808733/android/dx/dex/file/Section;->file:Lcom/s1243808733/android/dx/dex/file/DexFile;

    .line 77
    iput p3, p0, Lcom/s1243808733/android/dx/dex/file/Section;->alignment:I

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->prepared:Z

    return-void
.end method

.method public static validateAlignment(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    if-lez p0, :cond_0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid alignment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method protected final align(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    .line 263
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->alignment:I

    invoke-interface {p1, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->alignTo(I)V

    return-void
.end method

.method public abstract getAbsoluteItemOffset(Lcom/s1243808733/android/dx/dex/file/Item;)I
.end method

.method public final getAbsoluteOffset(I)I
    .registers 4

    .line 180
    if-gez p1, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "relative < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    if-gez v0, :cond_1

    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not yet set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    add-int/2addr v0, p1

    return v0
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

    if-gez v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset not set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    return v0
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
            "Ljava/util/Collection",
            "<+",
            "Lcom/s1243808733/android/dx/dex/file/Item;",
            ">;"
        }
    .end annotation
.end method

.method public final prepare()V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation
.end method

.method public final setFileOffset(I)I
    .registers 4

    .line 124
    if-gez p1, :cond_0

    .line 125
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fileOffset < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    if-ltz v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "fileOffset already set"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1
    iget v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->alignment:I

    add-int/lit8 v0, v0, -0x1

    .line 133
    xor-int/lit8 v1, v0, -0x1

    add-int/2addr v0, p1

    and-int/2addr v0, v1

    .line 135
    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    .line 137
    return v0
.end method

.method protected final throwIfNotPrepared()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 242
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->prepared:Z

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected final throwIfPrepared()V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->prepared:Z

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "already prepared"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public abstract writeSize()I
.end method

.method public final writeTo(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/s1243808733/android/dx/dex/file/Section;->throwIfNotPrepared()V

    .line 147
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/Section;->align(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    .line 149
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->getCursor()I

    move-result v0

    .line 151
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    if-gez v1, :cond_2

    .line 152
    iput v0, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    .line 159
    :cond_0
    invoke-interface {p1}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotates()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->name:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 161
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/s1243808733/android/dx/dex/file/Section;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    .line 167
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/s1243808733/android/dx/dex/file/Section;->writeTo0(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V

    return-void

    .line 153
    :cond_2
    iget v1, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    if-eq v1, v0, :cond_0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "alignment mismatch: for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, ", at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ", but expected "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v2, p0, Lcom/s1243808733/android/dx/dex/file/Section;->fileOffset:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_3
    if-eqz v0, :cond_1

    .line 163
    const-string v0, "\n"

    invoke-interface {p1, v3, v0}, Lcom/s1243808733/android/dx/util/AnnotatedOutput;->annotate(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract writeTo0(Lcom/s1243808733/android/dx/util/AnnotatedOutput;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/s1243808733/android/dx/util/AnnotatedOutput;",
            ")V"
        }
    .end annotation
.end method
