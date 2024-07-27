.class final Labcd/SG$a;
.super Labcd/SG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/SG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Labcd/SG;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/SG$a;)V
    .registers 2

    invoke-direct {p0}, Labcd/SG$a;-><init>()V

    return-void
.end method


# virtual methods
.method public DW()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
