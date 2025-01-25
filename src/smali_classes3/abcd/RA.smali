.class public Labcd/RA;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labcd/RA$a;
    }
.end annotation


# static fields
.field public static final DW:Labcd/RA;

.field public static final FH:Labcd/RA;

.field public static final j6:Labcd/RA;


# instance fields
.field private final Hw:Labcd/RA$a;

.field private final Zo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final v5:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Labcd/RA;

    sget-object v1, Labcd/RA$a;->DW:Labcd/RA$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Labcd/RA;-><init>(Labcd/RA$a;Ljava/util/List;)V

    sput-object v0, Labcd/RA;->j6:Labcd/RA;

    new-instance v0, Labcd/RA;

    sget-object v1, Labcd/RA$a;->v5:Labcd/RA$a;

    invoke-direct {v0, v1, v2}, Labcd/RA;-><init>(Labcd/RA$a;Ljava/util/List;)V

    sput-object v0, Labcd/RA;->DW:Labcd/RA;

    new-instance v0, Labcd/RA;

    sget-object v1, Labcd/RA$a;->j6:Labcd/RA$a;

    invoke-direct {v0, v1, v2}, Labcd/RA;-><init>(Labcd/RA$a;Ljava/util/List;)V

    sput-object v0, Labcd/RA;->FH:Labcd/RA;

    return-void
.end method

.method constructor <init>(Labcd/RA$a;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Labcd/RA$a;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/RA;->Hw:Labcd/RA$a;

    sget-object v0, Labcd/RA$a;->FH:Labcd/RA$a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_d

    iput-object p2, p0, Labcd/RA;->v5:Ljava/util/List;

    goto :goto_14

    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Labcd/RA;->v5:Ljava/util/List;

    :goto_14
    sget-object v0, Labcd/RA$a;->Hw:Labcd/RA$a;

    if-ne p1, v0, :cond_1b

    iput-object p2, p0, Labcd/RA;->Zo:Ljava/util/List;

    goto :goto_22

    :cond_1b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Labcd/RA;->Zo:Ljava/util/List;

    :goto_22
    return-void
.end method


# virtual methods
.method public j6()Labcd/RA$a;
    .registers 2

    iget-object v0, p0, Labcd/RA;->Hw:Labcd/RA$a;

    return-object v0
.end method
