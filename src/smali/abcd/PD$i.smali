.class final Labcd/PD$i;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/PD$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/PD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "i"
.end annotation


# static fields
.field static final j6:Labcd/PD$i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/PD$i;

    invoke-direct {v0}, Labcd/PD$i;-><init>()V

    sput-object v0, Labcd/PD$i;->j6:Labcd/PD$i;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(C)Z
    .registers 3

    invoke-static {p1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    return v0
.end method
