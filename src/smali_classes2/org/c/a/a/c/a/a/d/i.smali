.class public Lorg/c/a/a/c/a/a/d/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static a:Lorg/c/a/a/c/a/a/d/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/c/a/a/c/a/a/d/i;

    invoke-direct {v0}, Lorg/c/a/a/c/a/a/d/i;-><init>()V

    sput-object v0, Lorg/c/a/a/c/a/a/d/i;->a:Lorg/c/a/a/c/a/a/d/i;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/c/a/a/c/a/a/a/b/a/g;Lorg/c/a/a/c/a/a/a/b/a/g;)I
    .registers 5

    invoke-virtual {p1}, Lorg/c/a/a/c/a/a/a/b/a/g;->f()I

    move-result v0

    invoke-virtual {p2}, Lorg/c/a/a/c/a/a/a/b/a/g;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lorg/c/a/a/c/a/a/a/b/a/g;

    check-cast p2, Lorg/c/a/a/c/a/a/a/b/a/g;

    invoke-virtual {p0, p1, p2}, Lorg/c/a/a/c/a/a/d/i;->a(Lorg/c/a/a/c/a/a/a/b/a/g;Lorg/c/a/a/c/a/a/a/b/a/g;)I

    move-result v0

    return v0
.end method
