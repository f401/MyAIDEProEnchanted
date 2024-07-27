.class public Labcd/yk$g;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/yk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public final DW:Ljava/lang/String;

.field public final FH:Ljava/lang/String;

.field public final Hw:Ljava/lang/String;

.field public final VH:J

.field public final Zo:Ljava/lang/String;

.field public final gn:Ljava/lang/String;

.field public final v5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x64e0fcae0566a51cL    # 8.604485706962544E177

    const-class v0, Labcd/yk$g;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 15

    sget-boolean v0, Labcd/yk$g;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x3ca5bf47cf4af18L

    const/4 v2, 0x0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    const/4 v4, 0x4

    aput-object p5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, p6, p7}, Ljava/lang/Long;-><init>(J)V

    aput-object v5, v3, v4

    const/4 v4, 0x6

    aput-object p8, v3, v4

    invoke-static {v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;[Ljava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Labcd/yk$g;->DW:Ljava/lang/String;

    iput-object p2, p0, Labcd/yk$g;->FH:Ljava/lang/String;

    iput-object p3, p0, Labcd/yk$g;->Hw:Ljava/lang/String;

    iput-object p4, p0, Labcd/yk$g;->v5:Ljava/lang/String;

    iput-object p5, p0, Labcd/yk$g;->Zo:Ljava/lang/String;

    iput-wide p6, p0, Labcd/yk$g;->VH:J

    iput-object p8, p0, Labcd/yk$g;->gn:Ljava/lang/String;

    return-void
.end method
