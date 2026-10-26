.class public Lorg/c/a/a/b/c/e;
.super Lorg/c/a/a/b/b/b;

# interfaces
.implements Lorg/c/a/a/b/c/k;


# static fields
.field public static final g:Lorg/c/a/a/b/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/c/a/a/b/c/e;

    invoke-direct {v0}, Lorg/c/a/a/b/c/e;-><init>()V

    sput-object v0, Lorg/c/a/a/b/c/e;->g:Lorg/c/a/a/b/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/c/a/a/b/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/b/c/l;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/c/a/a/b/c/l;->a(Lorg/c/a/a/b/c/e;)V

    return-void
.end method
