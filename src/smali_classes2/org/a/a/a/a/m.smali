.class public abstract Lorg/a/a/a/a/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:I

.field public static final b:Ljava/util/UUID;

.field public static final c:Lorg/a/a/a/b/d;


# instance fields
.field public final d:Lorg/a/a/a/a/a;

.field protected final e:Lorg/a/a/a/a/ay;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Lorg/a/a/a/a/h;->a:I

    sput v0, Lorg/a/a/a/a/m;->a:I

    sget-object v0, Lorg/a/a/a/a/h;->b:Ljava/util/UUID;

    sput-object v0, Lorg/a/a/a/a/m;->b:Ljava/util/UUID;

    new-instance v0, Lorg/a/a/a/b/d;

    new-instance v1, Lorg/a/a/a/a/c;

    invoke-direct {v1}, Lorg/a/a/a/a/c;-><init>()V

    invoke-direct {v0, v1}, Lorg/a/a/a/b/d;-><init>(Lorg/a/a/a/a/c;)V

    sput-object v0, Lorg/a/a/a/a/m;->c:Lorg/a/a/a/b/d;

    sget-object v0, Lorg/a/a/a/a/m;->c:Lorg/a/a/a/b/d;

    const v1, 0x7fffffff

    iput v1, v0, Lorg/a/a/a/b/d;->a:I

    return-void
.end method

.method public constructor <init>(Lorg/a/a/a/a/a;Lorg/a/a/a/a/ay;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/a/a/a/a/m;->d:Lorg/a/a/a/a/a;

    iput-object p2, p0, Lorg/a/a/a/a/m;->e:Lorg/a/a/a/a/ay;

    return-void
.end method
