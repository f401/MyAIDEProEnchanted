.class public Labcd/uF;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Labcd/CC;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Labcd/qF;",
        ">;"
    }
.end annotation


# static fields
.field private static final j6:[Labcd/qF$a;


# instance fields
.field private final DW:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final FH:Labcd/CK;

.field private Hw:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Labcd/qF$a;->values()[Labcd/qF$a;

    move-result-object v0

    sput-object v0, Labcd/uF;->j6:[Labcd/qF$a;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TS;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Labcd/CK;

    invoke-direct {v0}, Labcd/CK;-><init>()V

    iput-object v0, p0, Labcd/uF;->FH:Labcd/CK;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labcd/uF;->Hw:Z

    iput-object p1, p0, Labcd/uF;->DW:Ljava/util/List;

    return-void
.end method

.method static synthetic j6(Labcd/uF;)Labcd/CK;
    .registers 1

    iget-object p0, p0, Labcd/uF;->FH:Labcd/CK;

    return-object p0
.end method

.method static synthetic j6()[Labcd/qF$a;
    .registers 1

    sget-object v0, Labcd/uF;->j6:[Labcd/qF$a;

    return-object v0
.end method


# virtual methods
.method public DW()Z
    .registers 2

    iget-boolean v0, p0, Labcd/uF;->Hw:Z

    return v0
.end method

.method public FH()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Labcd/uF;->DW:Ljava/util/List;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Labcd/qF;",
            ">;"
        }
    .end annotation

    new-instance v0, Labcd/tF;

    invoke-direct {v0, p0}, Labcd/tF;-><init>(Labcd/uF;)V

    return-object v0
.end method

.method public j6(IIILabcd/qF$a;)V
    .registers 7

    iget-object v0, p0, Labcd/uF;->FH:Labcd/CK;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Labcd/CK;->j6(I)V

    iget-object v0, p0, Labcd/uF;->FH:Labcd/CK;

    invoke-virtual {v0, p1}, Labcd/CK;->j6(I)V

    iget-object p1, p0, Labcd/uF;->FH:Labcd/CK;

    invoke-virtual {p1, p2}, Labcd/CK;->j6(I)V

    iget-object p1, p0, Labcd/uF;->FH:Labcd/CK;

    invoke-virtual {p1, p3}, Labcd/CK;->j6(I)V

    sget-object p1, Labcd/qF$a;->j6:Labcd/qF$a;

    if-eq p4, p1, :cond_1f

    const/4 p1, 0x1

    iput-boolean p1, p0, Labcd/uF;->Hw:Z

    :cond_1f
    return-void
.end method
