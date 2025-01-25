.class public final Lorg/a/a/a/c/l;
.super Lorg/a/a/a/c/a;


# static fields
.field public static final a:Lorg/a/a/a/c/l;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/a/a/a/c/l;

    invoke-direct {v0}, Lorg/a/a/a/c/l;-><init>()V

    sput-object v0, Lorg/a/a/a/c/l;->a:Lorg/a/a/a/c/l;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/a/a/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_3
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-nez p1, :cond_8

    if-nez p2, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method
