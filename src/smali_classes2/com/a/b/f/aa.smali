.class public Lcom/a/b/f/aa;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Lcom/a/b/e/b/ah;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/a/b/f/aa;->a:Z

    return-void
.end method

.method private static a(Lcom/a/b/e/b/ab;IZLjava/util/EnumSet;)Lcom/a/b/e/b/ab;
    .registers 7

    invoke-static {p0, p1, p2}, Lcom/a/b/f/am;->a(Lcom/a/b/e/b/ab;IZ)Lcom/a/b/f/ap;

    move-result-object v0

    invoke-virtual {p3}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object v1

    sget-object v2, Lcom/a/b/f/ab;->d:Lcom/a/b/f/ab;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v0, v1}, Lcom/a/b/f/aa;->a(Lcom/a/b/f/ap;Ljava/util/EnumSet;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/a/b/f/a/m;->a(Lcom/a/b/f/ap;Z)Lcom/a/b/e/b/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/a/b/e/b/ab;IZZLcom/a/b/e/b/ah;)Lcom/a/b/e/b/ab;
    .registers 11

    const-class v0, Lcom/a/b/f/ab;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/a/b/f/aa;->a(Lcom/a/b/e/b/ab;IZZLcom/a/b/e/b/ah;Ljava/util/EnumSet;)Lcom/a/b/e/b/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/a/b/e/b/ab;IZZLcom/a/b/e/b/ah;Ljava/util/EnumSet;)Lcom/a/b/e/b/ab;
    .registers 9

    sput-boolean p3, Lcom/a/b/f/aa;->a:Z

    sput-object p4, Lcom/a/b/f/aa;->b:Lcom/a/b/e/b/ah;

    invoke-static {p0, p1, p2}, Lcom/a/b/f/am;->a(Lcom/a/b/e/b/ab;IZ)Lcom/a/b/f/ap;

    move-result-object v0

    invoke-static {v0, p5}, Lcom/a/b/f/aa;->a(Lcom/a/b/f/ap;Ljava/util/EnumSet;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/b/f/a/m;->a(Lcom/a/b/f/ap;Z)Lcom/a/b/e/b/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/b/e/b/ab;->a()Lcom/a/b/e/b/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/b/e/b/d;->e()I

    move-result v1

    sget-object v2, Lcom/a/b/f/aa;->b:Lcom/a/b/e/b/ah;

    invoke-interface {v2}, Lcom/a/b/e/b/ah;->a()I

    move-result v2

    if-le v1, v2, :cond_0

    invoke-static {p0, p1, p2, p5}, Lcom/a/b/f/aa;->a(Lcom/a/b/e/b/ab;IZLjava/util/EnumSet;)Lcom/a/b/e/b/ab;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private static a(Lcom/a/b/f/ap;Ljava/util/EnumSet;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    sget-object v2, Lcom/a/b/f/ab;->a:Lcom/a/b/f/ab;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/a/b/f/w;->a(Lcom/a/b/f/ap;)V

    :cond_0
    sget-object v2, Lcom/a/b/f/ab;->b:Lcom/a/b/f/ab;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/a/b/f/ah;->a(Lcom/a/b/f/ap;)V

    invoke-static {p0}, Lcom/a/b/f/e;->a(Lcom/a/b/f/ap;)V

    move v0, v1

    :cond_1
    sget-object v2, Lcom/a/b/f/ab;->c:Lcom/a/b/f/ab;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0}, Lcom/a/b/f/s;->a(Lcom/a/b/f/ap;)V

    invoke-static {p0}, Lcom/a/b/f/e;->a(Lcom/a/b/f/ap;)V

    move v0, v1

    :cond_2
    sget-object v2, Lcom/a/b/f/ab;->e:Lcom/a/b/f/ab;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    sget-object v2, Lcom/a/b/f/ab;->e:Lcom/a/b/f/ab;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/a/b/f/l;->a(Lcom/a/b/f/ap;)V

    invoke-static {p0}, Lcom/a/b/f/e;->a(Lcom/a/b/f/ap;)V

    move v0, v1

    :cond_3
    sget-object v2, Lcom/a/b/f/ab;->d:Lcom/a/b/f/ab;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/a/b/f/b;->a(Lcom/a/b/f/ap;)V

    invoke-static {p0}, Lcom/a/b/f/e;->a(Lcom/a/b/f/ap;)V

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/a/b/f/e;->a(Lcom/a/b/f/ap;)V

    :cond_4
    invoke-static {p0}, Lcom/a/b/f/af;->a(Lcom/a/b/f/ap;)V

    return-void

    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/a/b/f/aa;->a:Z

    return v0
.end method

.method public static b()Lcom/a/b/e/b/ah;
    .registers 1

    sget-object v0, Lcom/a/b/f/aa;->b:Lcom/a/b/e/b/ah;

    return-object v0
.end method
