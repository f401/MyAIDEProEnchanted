.class public Labcd/iJ;
.super Ljava/lang/Object;


# static fields
.field public static final j6:Labcd/gE$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LgE$b<",
            "Labcd/iJ;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DW:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Labcd/hJ;

    invoke-direct {v0}, Labcd/hJ;-><init>()V

    sput-object v0, Labcd/iJ;->j6:Labcd/gE$b;

    return-void
.end method

.method private constructor <init>(Labcd/gE;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "fsckobjects"

    const/4 v1, 0x0

    const-string v2, "receive"

    invoke-virtual {p1, v2, v0, v1}, Labcd/gE;->j6(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Labcd/iJ;->DW:Z

    return-void
.end method

.method synthetic constructor <init>(Labcd/gE;Labcd/iJ;)V
    .registers 3

    invoke-direct {p0, p1}, Labcd/iJ;-><init>(Labcd/gE;)V

    return-void
.end method


# virtual methods
.method public j6()Z
    .registers 2

    iget-boolean v0, p0, Labcd/iJ;->DW:Z

    return v0
.end method
