.class public Labcd/B;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/B$a;,
        Labcd/B$b;,
        Labcd/B$c;,
        Labcd/B$d;
    }
.end annotation


# static fields
.field private static final j6:Labcd/B$a;


# instance fields
.field private final DW:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    new-instance v0, Labcd/B$c;

    invoke-direct {v0}, Labcd/B$c;-><init>()V

    :goto_0
    sput-object v0, Labcd/B;->j6:Labcd/B$a;

    return-void

    :cond_0
    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Labcd/B$b;

    invoke-direct {v0}, Labcd/B$b;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Labcd/B$d;

    invoke-direct {v0}, Labcd/B$d;-><init>()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/B;->DW:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public j6()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Labcd/B;->DW:Ljava/lang/Object;

    return-object v0
.end method
