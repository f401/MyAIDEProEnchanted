.class public Lorg/c/a/a/b/c/t;
.super Lorg/c/a/a/b/b/i;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# static fields
.field public static final h:Lorg/c/a/a/b/c/t;

.field public static final i:Lorg/c/a/a/b/c/t;

.field public static final j:Lorg/c/a/a/b/c/t;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/c/a/a/b/c/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/t;-><init>(I)V

    sput-object v0, Lorg/c/a/a/b/c/t;->h:Lorg/c/a/a/b/c/t;

    new-instance v0, Lorg/c/a/a/b/c/t;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/t;-><init>(I)V

    sput-object v0, Lorg/c/a/a/b/c/t;->i:Lorg/c/a/a/b/c/t;

    new-instance v0, Lorg/c/a/a/b/c/t;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/c/a/a/b/c/t;-><init>(I)V

    sput-object v0, Lorg/c/a/a/b/c/t;->j:Lorg/c/a/a/b/c/t;

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lorg/c/a/a/b/b/i;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .registers 2

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/t;)V

    return-void
.end method
