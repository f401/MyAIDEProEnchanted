.class public Labcd/W$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public DW:Z

.field public FH:Z

.field public Hw:I

.field public VH:I

.field public Zo:I

.field final gn:Labcd/W;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0xf6d49b46769c3abL    # -1.859255029029664E234

    const-class v0, Labcd/W$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/W;ZZIIII)V
    .registers 14

    sget-boolean v0, Labcd/W$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x334b62d0796aa030L    # -3.312543118481995E61

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/W$a;->gn:Labcd/W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Labcd/W$a;->DW:Z

    iput-boolean p3, p0, Labcd/W$a;->FH:Z

    iput p4, p0, Labcd/W$a;->Hw:I

    iput p5, p0, Labcd/W$a;->v5:I

    iput p6, p0, Labcd/W$a;->Zo:I

    iput p7, p0, Labcd/W$a;->VH:I

    return-void
.end method
