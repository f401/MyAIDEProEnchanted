.class final Labcd/PD$c;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/PD$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/PD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# static fields
.field static final j6:Labcd/PD$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/PD$c;

    invoke-direct {v0}, Labcd/PD$c;-><init>()V

    sput-object v0, Labcd/PD$c;->j6:Labcd/PD$c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j6(C)Z
    .registers 2

    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result p1

    return p1
.end method
