.class Labcd/Mi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labcd/Oi$a;->XX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final FH:Labcd/Oi$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, 0x70047fb510f460L

    const-wide v2, -0x26b1e119d40b7235L  # -1.5555834595391767E122

    const-class v4, Labcd/Mi;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Labcd/Oi$a;)V
    .registers 2

    iput-object p1, p0, Labcd/Mi;->FH:Labcd/Oi$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0xb4ac9fdc6281abcL
    .end annotation

    const-wide v0, -0x528014518ca6901fL  # -1.567013593549477E-89

    :try_start_5
    sget-boolean v2, Labcd/Mi;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Labcd/Mi;->FH:Labcd/Oi$a;

    iget-object v2, v2, Labcd/Oi$a;->v5:Labcd/Oi;

    const-string v3, "KEY_PACKAGE_REPLIED_NOT_VALID"

    invoke-virtual {v2, v3}, Labcd/Oi;->j6(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Labcd/Mi;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
