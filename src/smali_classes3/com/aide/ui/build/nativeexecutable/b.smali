.class Lcom/aide/ui/build/nativeexecutable/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/ui/build/nativeexecutable/f;->DW()V
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
.field final FH:Lcom/aide/ui/build/nativeexecutable/f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0xad04fbe50739491L

    const-wide v2, -0x1f7b942d44ec1fb9L  # -8.761706114486192E156

    const-class v4, Lcom/aide/ui/build/nativeexecutable/b;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/ui/build/nativeexecutable/f;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/ui/build/nativeexecutable/b;->FH:Lcom/aide/ui/build/nativeexecutable/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5
    .annotation runtime Labcd/su;
        method = -0x179a137dd9366254L
    .end annotation

    const-wide v0, -0x35f71cabe71f32f5L  # -4.5467319538382524E48

    :try_start_5
    sget-boolean v2, Lcom/aide/ui/build/nativeexecutable/b;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/ui/build/nativeexecutable/b;->FH:Lcom/aide/ui/build/nativeexecutable/f;

    iget-object v2, v2, Lcom/aide/ui/build/nativeexecutable/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    const-string v3, "NDK build was interrupted!"

    invoke-static {v2, v3}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Lcom/aide/ui/build/nativeexecutable/k;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    move-exception v2

    sget-boolean v3, Lcom/aide/ui/build/nativeexecutable/b;->DW:Z

    if-eqz v3, :cond_1e

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1e
    throw v2
.end method
