.class final Labcd/PD$d;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/PD$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/PD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field static final j6:Labcd/PD$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Labcd/PD$d;

    invoke-direct {v0}, Labcd/PD$d;-><init>()V

    sput-object v0, Labcd/PD$d;->j6:Labcd/PD$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(C)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    return v0
.end method
