.class public Labcd/Sk$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Sk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public DW:Ljava/lang/String;

.field public FH:Ljava/lang/String;

.field public Hw:[Ljava/lang/String;

.field public VH:Labcd/Sk$b;

.field public Zo:I

.field public v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, -0x5c568d82eb07743fL    # -6.838051144889089E-137

    const-class v0, Labcd/Sk$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Labcd/Sk$b;ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    sget-boolean v0, Labcd/Sk$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x38ef7151b3d86069L    # 1.8923858378686967E-34

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    aput-object p6, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Sk$a;->DW:Ljava/lang/String;

    iput p3, p0, Labcd/Sk$a;->Zo:I

    iput-object p4, p0, Labcd/Sk$a;->FH:Ljava/lang/String;

    iput-object p5, p0, Labcd/Sk$a;->Hw:[Ljava/lang/String;

    iput-object p2, p0, Labcd/Sk$a;->VH:Labcd/Sk$b;

    iput-object p6, p0, Labcd/Sk$a;->v5:Ljava/lang/String;

    return-void
.end method
