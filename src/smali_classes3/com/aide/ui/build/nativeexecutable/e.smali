.class Lcom/aide/ui/build/nativeexecutable/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/nativeexecutable/f;->j6(Ljava/util/Map;)V
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
.field final FH:Ljava/util/Map;

.field final Hw:Lcom/aide/ui/build/nativeexecutable/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xad04fbe50739491L

    const-wide v2, -0x1f7c4f08010fc144L  # -8.448542570458133E156

    const-class v4, Lcom/aide/ui/build/nativeexecutable/e;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/nativeexecutable/f;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/e;->Hw:Lcom/aide/ui/build/nativeexecutable/f;

    iput-object p2, p0, Lcom/aide/ui/build/nativeexecutable/e;->FH:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6
    .annotation runtime Labcd/su;
        method = 0x17312aed9d194dbdL
    .end annotation

    const-wide v0, -0x35e4fb9ea4379768L  # -9.871387834678863E48

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/e;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/e;->Hw:Lcom/aide/ui/build/nativeexecutable/f;

    iget-object v2, v2, Lcom/aide/ui/build/nativeexecutable/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    const-string v3, "NDK"

    iget-object v4, p0, Lcom/aide/ui/build/nativeexecutable/e;->FH:Ljava/util/Map;

    invoke-static {v2, v3, v4}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Lcom/aide/ui/build/nativeexecutable/k;Ljava/lang/String;Ljava/util/Map;)V

    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/e;->Hw:Lcom/aide/ui/build/nativeexecutable/f;

    iget-object v2, v2, Lcom/aide/ui/build/nativeexecutable/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    invoke-static {v2}, Lcom/aide/ui/build/nativeexecutable/k;->DW(Lcom/aide/ui/build/nativeexecutable/k;)V
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1f

    return-void

    :catchall_1f
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/e;->DW:Z

    if-eqz v3, :cond_27

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_27
    throw v2
.end method
