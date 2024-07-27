.class public Labcd/sD;
.super Ljava/lang/RuntimeException;


# static fields
.field public static final j6:Labcd/sD;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/sD;

    invoke-direct {v0}, Labcd/sD;-><init>()V

    sput-object v0, Labcd/sD;->j6:Labcd/sD;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method
