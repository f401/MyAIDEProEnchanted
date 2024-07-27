.class public Labcd/O$a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labcd/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static DW:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field private static j6:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field


# instance fields
.field public FH:I

.field public Hw:I

.field public VH:Z

.field public Zo:I

.field final gn:Labcd/O;
    .annotation runtime Labcd/vu;
    .end annotation
.end field

.field public v5:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-wide v2, 0x9f25710adec62bL

    const-class v0, Labcd/O$a;

    invoke-static {v0, v2, v3, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method public constructor <init>(Labcd/O;)V
    .registers 8

    const-wide v4, 0x6555c770c924255L

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Labcd/O$a;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x6555c770c924255L

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Labcd/O$a;->gn:Labcd/O;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Labcd/O$a;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
