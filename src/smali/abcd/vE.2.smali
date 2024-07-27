.class public Labcd/vE;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/LE;


# static fields
.field public static final j6:Labcd/vE;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/vE;

    invoke-direct {v0}, Labcd/vE;-><init>()V

    sput-object v0, Labcd/vE;->j6:Labcd/vE;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCancelled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j6()V
    .registers 1

    return-void
.end method

.method public j6(Ljava/lang/String;I)V
    .registers 3

    return-void
.end method

.method public start(I)V
    .registers 2

    return-void
.end method

.method public update(I)V
    .registers 2

    return-void
.end method
