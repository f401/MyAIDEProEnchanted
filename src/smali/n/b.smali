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
    .registers 3

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

    const-wide/16 v1, 0x14

    invoke-direct {v0, v1, v2}, Lc/k;-><init>(J)V

    sput-object v0, Ln/b;->c:Lc/k;

    new-instance v0, Lc/k;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Lc/k;-><init>(J)V

    sput-object v0, Ln/b;->d:Lc/k;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

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
    .registers 6

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

    :goto_14
    invoke-virtual {p1}, Lc/t;->p()I

    move-result v1

    if-eq v0, v1, :cond_63

    invoke-virtual {p1, v0}, Lc/t;->k(I)Lc/e;

    move-result-object v1

    check-cast v1, Lc/z;

    .line 1
    iget v2, v1, Lc/z;->a:I

    if-eqz v2, :cond_56

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4b

    const/4 v3, 0x2

    if-eq v2, v3, :cond_40

    const/4 v3, 0x3

    if-ne v2, v3, :cond_38

    .line 2
    invoke-virtual {v1}, Lc/z;->k()Lc/s;

    move-result-object v1

    invoke-static {v1}, Lc/k;->b(Ljava/lang/Object;)Lc/k;

    move-result-object v1

    .line 3
    iput-object v1, p0, Ln/b;->h:Lc/k;

    goto :goto_60

    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown tag"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_40
    invoke-virtual {v1}, Lc/z;->k()Lc/s;

    move-result-object v1

    invoke-static {v1}, Lc/k;->b(Ljava/lang/Object;)Lc/k;

    move-result-object v1

    .line 5
    iput-object v1, p0, Ln/b;->g:Lc/k;

    goto :goto_60

    .line 6
    :cond_4b
    invoke-static {v1}, Lc/t;->c(Lc/z;)Lc/t;

    move-result-object v1

    invoke-static {v1}, Lr/a;->c(Ljava/lang/Object;)Lr/a;

    move-result-object v1

    .line 7
    iput-object v1, p0, Ln/b;->f:Lr/a;

    goto :goto_60

    .line 8
    :cond_56
    invoke-static {v1}, Lc/t;->c(Lc/z;)Lc/t;

    move-result-object v1

    invoke-static {v1}, Lr/a;->c(Ljava/lang/Object;)Lr/a;

    move-result-object v1

    .line 9
    iput-object v1, p0, Ln/b;->e:Lr/a;

    :goto_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_63
    return-void
.end method

.method public constructor <init>(Lr/a;Lr/a;Lc/k;Lc/k;)V
    .registers 5

    invoke-direct {p0}, Lc/m;-><init>()V

    iput-object p1, p0, Ln/b;->e:Lr/a;

    iput-object p2, p0, Ln/b;->f:Lr/a;

    iput-object p3, p0, Ln/b;->g:Lc/k;

    iput-object p4, p0, Ln/b;->h:Lc/k;

    return-void
.end method


# virtual methods
.method public final l()Lc/s;
    .registers 7

    new-instance v0, Lc/f;

    invoke-direct {v0}, Lc/f;-><init>()V

    iget-object v1, p0, Ln/b;->e:Lr/a;

    sget-object v2, Ln/b;->a:Lr/a;

    invoke-virtual {v1, v2}, Lc/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    new-instance v1, Lc/bf;

    iget-object v4, p0, Ln/b;->e:Lr/a;

    invoke-direct {v1, v3, v2, v4}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    :cond_1b
    iget-object v1, p0, Ln/b;->f:Lr/a;

    sget-object v4, Ln/b;->b:Lr/a;

    invoke-virtual {v1, v4}, Lc/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    new-instance v1, Lc/bf;

    iget-object v4, p0, Ln/b;->f:Lr/a;

    invoke-direct {v1, v3, v3, v4}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    :cond_2f
    iget-object v1, p0, Ln/b;->g:Lc/k;

    sget-object v4, Ln/b;->c:Lc/k;

    invoke-virtual {v1, v4}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    new-instance v1, Lc/bf;

    const/4 v4, 0x2

    iget-object v5, p0, Ln/b;->g:Lc/k;

    invoke-direct {v1, v3, v4, v5}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    :cond_44
    iget-object v1, p0, Ln/b;->h:Lc/k;

    sget-object v4, Ln/b;->d:Lc/k;

    invoke-virtual {v1, v4}, Lc/s;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_59

    new-instance v1, Lc/bf;

    const/4 v4, 0x3

    iget-object v5, p0, Ln/b;->h:Lc/k;

    invoke-direct {v1, v3, v4, v5}, Lc/bf;-><init>(ZILc/e;)V

    invoke-virtual {v0, v1}, Lc/f;->b(Lc/e;)V

    :cond_59
    new-instance v1, Lc/bc;

    invoke-direct {v1, v0, v2}, Lc/bc;-><init>(Lc/f;I)V

    return-object v1
.end method
