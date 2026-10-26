.class public final Ln/b;
.super Lc/m;
.source "SourceFile"


# static fields
.field public static final a:Lr/a;

.field public static final b:Lr/a;

.field public static final c:Lc/k;

.field public static final d:Lc/k;


# instance fields
.field public e:Lr/a;

.field public f:Lr/a;

.field public g:Lc/k;

.field public h:Lc/k;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lr/a;

    sget-object v1, Lm/a;->a:Lc/n;

    sget-object v2, Lc/ax;->a:Lc/ax;

    invoke-direct {v0, v1, v2}, Lr/a;-><init>(Lc/n;Lc/e;)V

    sput-object v0, Ln/b;->a:Lr/a;

    new-instance v1, Lr/a;

    sget-object v2, Ln/a;->f:Lc/n;

    invoke-direct {v1, v2, v0}, Lr/a;-><init>(Lc/n;Lc/e;)V

    sput-object v1, Ln/b;->b:Lr/a;

    new-instance v0, Lc/k;

    const-wide/16 v2, 0x14

    invoke-direct {v0, v2, v3}, Lc/k;-><init>(J)V

    sput-object v0, Ln/b;->c:Lc/k;

    new-instance v0, Lc/k;

    const-wide/16 v2, 0x1

    invoke-direct {v0, v2, v3}, Lc/k;-><init>(J)V

    sput-object v0, Ln/b;->d:Lc/k;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lc/m;-><init>()V

    sget-object v0, Ln/b;->a:Lr/a;

    iput-object v0, p0, Ln/b;->e:Lr/a;

    sget-object v0, Ln/b;->b:Lr/a;

    iput-object v0, p0, Ln/b;->f:Lr/a;

    sget-object v0, Ln/b;->c:Lc/k;

    iput-object v0, p0, Ln/b;->g:Lc/k;

    sget-object v0, Ln/b;->d:Lc/k;

    iput-object v0, p0, Ln/b;->h:Lc/k;

    return-void
.end method

.method public constructor <init>(Lc/t;)V
    .locals 4

    invoke-direct {p0}, Lc/m;-><init>()V

    sget-object v0, Ln/b;->a:Lr/a;

    iput-object v0, p0, Ln/b;->e:Lr/a;

    sget-object v0, Ln/b;->b:Lr/a;

    iput-object v0, p0, Ln/b;->f:Lr/a;

    sget-object v0, Ln/b;->c:Lc/k;

    iput-object v0, p0, Ln/b;->g:Lc/k;

    sget-object v0, Ln/b;->d:Lc/k;

    iput-object v0, p0, Ln/b;->h:Lc/k;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lc/t;->p()I

    move-result v0

    if-eq v1, v0, :cond_4

    invoke-virtual {p1, v1}, Lc/t;->k(I)Lc/e;

    move-result-object v0

    check-cast v0, Lc/z;

    .line 1
    iget v2, v0, Lc/z;->a:I

    if-eqz v2, :cond_3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/z;->k()Lc/s;

    move-result-object v0

    invoke-static {v0}, Lc/k;->b(Ljava/lang/Object;)Lc/k;

    move-result-object v0

    .line 3
    iput-object v0, p0, Ln/b;->h:Lc/k;

    .line 9
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    invoke-virtual {v0}, Lc/z;->k()Lc/s;

    move-result-object v0

    invoke-static {v0}, Lc/k;->b(Ljava/lang/Object;)Lc/k;

    move-result-object v0

    .line 5
    iput-object v0, p0, Ln/b;->g:Lc/k;

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {v0}, Lc/t;->c(Lc/z;)Lc/t;

    move-result-object v0

    invoke-static {v0}, Lr/a;->c(Ljava/lang/Object;)Lr/a;

    move-result-object v0

    .line 7
    iput-object v0, p0, Ln/b;->f:Lr/a;

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {v0}, Lc/t;->c(Lc/z;)Lc/t;

    move-result-object v0

    invoke-static {v0}, Lr/a;->c(Ljava/lang/Object;)Lr/a;

    move-result-object v0

    .line 9
    iput-object v0, p0, Ln/b;->e:Lr/a;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public constructor <init>(Lr/a;Lr/a;Lc/k;Lc/k;)V
    .locals 0

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Ln/b;->e:Lr/a;

    iput-object p2, p0, Ln/b;->f:Lr/a;

    iput-object p3, p0, Ln/b;->g:Lc/k;

    iput-object p4, p0, Ln/b;->h:Lc/k;

    return-void
.end method


# virtual methods
.method public final l()Lc/s;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    iget-object v1, p0, Ln/b;->e:Lr/a;

    sget-object v2, Ln/b;->a:Lr/a;

    invoke-virtual {v1, v2}, Lc/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lc/bf;

    iget-object v2, p0, Ln/b;->e:Lr/a;

    invoke-direct {v1, v4, v5, v2}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    :cond_0
    iget-object v1, p0, Ln/b;->f:Lr/a;

    sget-object v2, Ln/b;->b:Lr/a;

    invoke-virtual {v1, v2}, Lc/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lc/bf;

    iget-object v2, p0, Ln/b;->f:Lr/a;

    invoke-direct {v1, v4, v4, v2}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    :cond_1
    iget-object v1, p0, Ln/b;->g:Lc/k;

    sget-object v2, Ln/b;->c:Lc/k;

    invoke-virtual {v1, v2}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lc/bf;

    const/4 v2, 0x2

    iget-object v3, p0, Ln/b;->g:Lc/k;

    invoke-direct {v1, v4, v2, v3}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    :cond_2
    iget-object v1, p0, Ln/b;->h:Lc/k;

    sget-object v2, Ln/b;->d:Lc/k;

    invoke-virtual {v1, v2}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lc/bf;

    const/4 v2, 0x3

    iget-object v3, p0, Ln/b;->h:Lc/k;

    invoke-direct {v1, v4, v2, v3}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    :cond_3
    new-instance v1, Lc/bc;

    invoke-direct {v1, v0, v5}, Lc/bc;-><init>(Lc/f;I)V

    return-object v1
.end method
