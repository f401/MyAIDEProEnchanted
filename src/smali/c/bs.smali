.class public abstract Lc/bs;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final g:Ljava/io/InputStream;

.field public h:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lc/bs;->g:Ljava/io/InputStream;

    iput p2, p0, Lc/bs;->h:I

    return-void
.end method


# virtual methods
.method public d()I
    .registers 2

    iget v0, p0, Lc/bs;->h:I

    return v0
.end method

.method public final i()V
    .registers 3

    iget-object v0, p0, Lc/bs;->g:Ljava/io/InputStream;

    instance-of v1, v0, Lc/bp;

    if-eqz v1, :cond_e

    check-cast v0, Lc/bp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lc/bp;->e:Z

    invoke-virtual {v0}, Lc/bp;->f()Z

    :cond_e
    return-void
.end method
