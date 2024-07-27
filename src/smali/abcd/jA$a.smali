.class Labcd/jA$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/jA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final j6:Labcd/jA;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Labcd/jA;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Labcd/jA;-><init>(Labcd/iA;)V

    sput-object v0, Labcd/jA$a;->j6:Labcd/jA;

    return-void
.end method

.method static synthetic j6()Labcd/jA;
    .registers 1

    sget-object v0, Labcd/jA$a;->j6:Labcd/jA;

    return-object v0
.end method
