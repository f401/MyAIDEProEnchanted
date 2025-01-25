.class public Labcd/Sk$b;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/Sk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public DW:Labcd/IProject;

.field public EQ:I

.field public FH:Ljava/lang/String;

.field public Hw:Ljava/lang/String;

.field public VH:Z

.field public Zo:Ljava/lang/String;

.field public gn:Z

.field public tp:Z

.field public u7:Ljava/lang/String;

.field public v5:Ljava/lang/String;

.field public we:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-class v0, Labcd/Sk$b;

    const-wide v1, -0xba4b609eeb08bfL

    invoke-static {v0, v1, v2, v1, v2}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/IProject;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 16

    sget-boolean v0, Labcd/Sk$b;->j6:Z

    if-eqz v0, :cond_49

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const/4 v1, 0x4

    aput-object p5, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p6}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p7}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v1, 0x7

    aput-object p8, v0, v1

    const/16 v1, 0x8

    aput-object p9, v0, v1

    const/16 v1, 0x9

    aput-object p10, v0, v1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p11}, Ljava/lang/Boolean;-><init>(Z)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-wide v1, 0x75cf169914e5dccL

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/Sk$b;->DW:Labcd/IProject;

    iput-object p5, p0, Labcd/Sk$b;->Zo:Ljava/lang/String;

    iput-object p3, p0, Labcd/Sk$b;->v5:Ljava/lang/String;

    iput-object p4, p0, Labcd/Sk$b;->FH:Ljava/lang/String;

    iput-object p8, p0, Labcd/Sk$b;->Hw:Ljava/lang/String;

    iput-boolean p6, p0, Labcd/Sk$b;->VH:Z

    iput-boolean p7, p0, Labcd/Sk$b;->gn:Z

    iput-object p9, p0, Labcd/Sk$b;->u7:Ljava/lang/String;

    iput-boolean p11, p0, Labcd/Sk$b;->tp:Z

    iput p2, p0, Labcd/Sk$b;->EQ:I

    iput-object p10, p0, Labcd/Sk$b;->we:Ljava/lang/String;

    return-void
.end method
