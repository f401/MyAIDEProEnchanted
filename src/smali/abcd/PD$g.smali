.class final Labcd/PD$g;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/PD$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/PD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# static fields
.field private static DW:Ljava/lang/String;

.field static final j6:Labcd/PD$g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/PD$g;

    invoke-direct {v0}, Labcd/PD$g;-><init>()V

    sput-object v0, Labcd/PD$g;->j6:Labcd/PD$g;

    const-string v0, "-!\"#$%&\'()*+,./:;<=>?@[\\]_`{|}~"

    sput-object v0, Labcd/PD$g;->DW:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6(C)Z
    .registers 4

    sget-object v0, Labcd/PD$g;->DW:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
