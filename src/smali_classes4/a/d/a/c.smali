.class public La/d/a/c;
.super Ljava/lang/Object;

# interfaces
.implements La/d/a/be;


# static fields
.field static final a:La/d/a/ae;

.field static final b:La/d/a/af;

.field static final c:La/d/a/u;

.field static final d:La/d/a/t;

.field static final e:La/d/a/ap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, La/d/a/ba;

    invoke-direct {v0}, La/d/a/ba;-><init>()V

    sput-object v0, La/d/a/c;->a:La/d/a/ae;

    new-instance v0, La/d/a/bb;

    invoke-direct {v0}, La/d/a/bb;-><init>()V

    sput-object v0, La/d/a/c;->b:La/d/a/af;

    new-instance v0, La/d/a/az;

    invoke-direct {v0}, La/d/a/az;-><init>()V

    sput-object v0, La/d/a/c;->c:La/d/a/u;

    new-instance v0, La/d/a/ay;

    invoke-direct {v0}, La/d/a/ay;-><init>()V

    sput-object v0, La/d/a/c;->d:La/d/a/t;

    new-instance v0, La/d/a/bc;

    invoke-direct {v0}, La/d/a/bc;-><init>()V

    sput-object v0, La/d/a/c;->e:La/d/a/ap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()La/d/a/ae;
    .registers 2

    sget-object v0, La/d/a/c;->a:La/d/a/ae;

    return-object v0
.end method

.method public a(I)La/d/a/ae;
    .registers 3

    invoke-virtual {p0}, La/d/a/c;->a()La/d/a/ae;

    move-result-object v0

    return-object v0
.end method

.method public a(J)La/d/a/af;
    .registers 4

    invoke-virtual {p0}, La/d/a/c;->b()La/d/a/af;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;La/b/c;La/d/a/ae;)La/d/a/ap;
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, La/d/a/c;->b(Ljava/lang/String;La/b/c;ZZ)La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;La/b/c;La/d/a/ae;La/d/a/bd;)La/d/a/ap;
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, La/d/a/c;->a(Ljava/lang/String;La/b/c;La/d/a/ae;)La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;La/b/c;ZZ)La/d/a/bd;
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_2e

    invoke-static {p1}, La/b/f/i;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    :goto_e
    invoke-virtual {p0, p1, p2, p3, p4}, La/d/a/c;->b(Ljava/lang/String;La/b/c;ZZ)La/d/a/ap;

    move-result-object v0

    :goto_12
    return-object v0

    :sswitch_13
    const/4 v0, 0x0

    goto :goto_12

    :sswitch_15
    invoke-virtual {p0}, La/d/a/c;->a()La/d/a/ae;

    move-result-object v0

    goto :goto_12

    :sswitch_1a
    invoke-virtual {p0}, La/d/a/c;->b()La/d/a/af;

    move-result-object v0

    goto :goto_12

    :sswitch_1f
    invoke-virtual {p0}, La/d/a/c;->c()La/d/a/u;

    move-result-object v0

    goto :goto_12

    :sswitch_24
    invoke-virtual {p0}, La/d/a/c;->d()La/d/a/t;

    move-result-object v0

    goto :goto_12

    :cond_29
    invoke-static {p1}, La/b/f/i;->o(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_e

    :sswitch_data_2e
    .sparse-switch
        0x42 -> :sswitch_15
        0x43 -> :sswitch_15
        0x44 -> :sswitch_24
        0x46 -> :sswitch_1f
        0x49 -> :sswitch_15
        0x4a -> :sswitch_1a
        0x53 -> :sswitch_15
        0x56 -> :sswitch_13
        0x5a -> :sswitch_15
    .end sparse-switch
.end method

.method public a(D)La/d/a/t;
    .registers 4

    invoke-virtual {p0}, La/d/a/c;->d()La/d/a/t;

    move-result-object v0

    return-object v0
.end method

.method public a(F)La/d/a/u;
    .registers 3

    invoke-virtual {p0}, La/d/a/c;->c()La/d/a/u;

    move-result-object v0

    return-object v0
.end method

.method public b()La/d/a/af;
    .registers 2

    sget-object v0, La/d/a/c;->b:La/d/a/af;

    return-object v0
.end method

.method public b(Ljava/lang/String;La/b/c;ZZ)La/d/a/ap;
    .registers 6

    invoke-virtual {p0}, La/d/a/c;->e()La/d/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public c()La/d/a/u;
    .registers 2

    sget-object v0, La/d/a/c;->c:La/d/a/u;

    return-object v0
.end method

.method public d()La/d/a/t;
    .registers 2

    sget-object v0, La/d/a/c;->d:La/d/a/t;

    return-object v0
.end method

.method public e()La/d/a/ap;
    .registers 2

    sget-object v0, La/d/a/c;->e:La/d/a/ap;

    return-object v0
.end method

.method public f()La/d/a/ap;
    .registers 2

    sget-object v0, La/d/a/c;->e:La/d/a/ap;

    return-object v0
.end method
