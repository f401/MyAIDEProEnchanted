.class public Labcd/JE$a;
.super Labcd/JE;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/JE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final DW:J

.field private final FH:Ljava/io/InputStream;

.field private final j6:I


# direct methods
.method public constructor <init>(IJLjava/io/InputStream;)V
    .registers 5

    invoke-direct {p0}, Labcd/JE;-><init>()V

    iput p1, p0, Labcd/JE$a;->j6:I

    iput-wide p2, p0, Labcd/JE$a;->DW:J

    iput-object p4, p0, Labcd/JE$a;->FH:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    iget-object v0, p0, Labcd/JE$a;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Labcd/JE$a;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public j6()J
    .registers 3

    iget-wide v0, p0, Labcd/JE$a;->DW:J

    return-wide v0
.end method

.method public mark(I)V
    .registers 3

    iget-object v0, p0, Labcd/JE$a;->FH:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .registers 2

    iget-object v0, p0, Labcd/JE$a;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 2

    iget-object v0, p0, Labcd/JE$a;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 5

    iget-object v0, p0, Labcd/JE$a;->FH:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public reset()V
    .registers 2

    iget-object v0, p0, Labcd/JE$a;->FH:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .registers 4

    iget-object v0, p0, Labcd/JE$a;->FH:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    return-wide p1
.end method
