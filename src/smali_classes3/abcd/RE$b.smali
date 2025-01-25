.class abstract Labcd/RE$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/RE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field final j6:Labcd/RE;


# direct methods
.method private constructor <init>(Labcd/RE;)V
    .registers 2

    iput-object p1, p0, Labcd/RE$b;->j6:Labcd/RE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Labcd/RE;Labcd/RE$b;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/RE$b;-><init>(Labcd/RE;)V

    return-void
.end method


# virtual methods
.method abstract j6(Labcd/RE$a;)Labcd/RE$a;
.end method
