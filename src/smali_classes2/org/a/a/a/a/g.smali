.class public Lorg/a/a/a/a/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lorg/a/a/a/a/g;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lorg/a/a/a/a/g;

    invoke-direct {v0}, Lorg/a/a/a/a/g;-><init>()V

    sput-object v0, Lorg/a/a/a/a/g;->a:Lorg/a/a/a/a/g;

    sget-object v0, Lorg/a/a/a/a/g;->a:Lorg/a/a/a/a/g;

    invoke-virtual {v0}, Lorg/a/a/a/a/g;->b()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/a/a/g;->c:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/a/a/a/a/g;->d:Z

    return-void
.end method

.method public static a()Lorg/a/a/a/a/g;
    .registers 1

    sget-object v0, Lorg/a/a/a/a/g;->a:Lorg/a/a/a/a/g;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/a/a/a/a/g;->b:Z

    return-void
.end method

.method public final c()Z
    .registers 2

    iget-boolean v0, p0, Lorg/a/a/a/a/g;->c:Z

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lorg/a/a/a/a/g;->d:Z

    return v0
.end method
