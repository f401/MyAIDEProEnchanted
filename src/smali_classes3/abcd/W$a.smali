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
    .registers 3

    const-class v0, Labcd/W$a;

    const-wide v1, -0xf6d49b46769c3abL  # -1.859255029029664E234

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/W;ZZIIII)V
    .registers 12

    sget-boolean v0, Labcd/W$a;->j6:Z

    if-eqz v0, :cond_43

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p3}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p6}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-wide v1, -0x334b62d0796aa030L  # -3.312543118481995E61

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_43
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
