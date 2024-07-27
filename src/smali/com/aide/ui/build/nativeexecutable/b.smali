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
    .registers 6

    const-class v0, Lcom/aide/ui/build/nativeexecutable/b;

    const-wide v2, -0xad04fbe50739491L

    const-wide v4, -0x1f7b942d44ec1fb9L    # -8.761706114486192E156

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v2, -0x35f71cabe71f32f5L    # -4.5467319538382524E48

    :try_start_0
    sget-boolean v0, Lcom/aide/ui/build/nativeexecutable/b;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, -0x35f71cabe71f32f5L    # -4.5467319538382524E48

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/aide/ui/build/nativeexecutable/b;->FH:Lcom/aide/ui/build/nativeexecutable/f;

    iget-object v0, v0, Lcom/aide/ui/build/nativeexecutable/f;->FH:Lcom/aide/ui/build/nativeexecutable/k;

    const-string v1, "NDK build was interrupted!"

    invoke-static {v0, v1}, Lcom/aide/ui/build/nativeexecutable/k;->j6(Lcom/aide/ui/build/nativeexecutable/k;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/ui/build/nativeexecutable/b;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v2, v3, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
