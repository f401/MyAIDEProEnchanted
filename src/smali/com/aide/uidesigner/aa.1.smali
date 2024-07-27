.class final Lcom/aide/uidesigner/aa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/aide/common/ab;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/ka;->j6(Landroid/app/Activity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aide/common/ab",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
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
.field final FH:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-class v0, Lcom/aide/uidesigner/aa;

    const-wide v2, 0x1c796187b3007d70L    # 1.6419155400031285E-171

    const-wide v4, 0x1dd13d49441c3915L    # 4.677615406558868E-165

    invoke-static {v0, v2, v3, v4, v5}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Intent;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/aa;->FH:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j6(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aide/uidesigner/aa;->j6(Ljava/lang/String;)V

    return-void
.end method

.method public j6(Ljava/lang/String;)V
    .registers 8
    .annotation runtime Labcd/su;
        method = 0x663a05c39046bf0L
    .end annotation

    const-wide v4, 0x441630332d1a580L

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/aa;->j6:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x441630332d1a580L

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-static {}, Lcom/aide/uidesigner/ka;->j6()Lcom/aide/uidesigner/s;

    move-result-object v0

    iget-object v1, p0, Lcom/aide/uidesigner/aa;->FH:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Lcom/aide/uidesigner/s;->j6(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {}, Lcom/aide/uidesigner/ka;->j6()Lcom/aide/uidesigner/s;

    move-result-object v0

    invoke-static {}, Lcom/aide/uidesigner/ka;->DW()Lcom/aide/uidesigner/a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@drawable/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/aide/uidesigner/ka;->j6(Lcom/aide/uidesigner/s;)Lcom/aide/uidesigner/s;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/aide/uidesigner/ka;->j6(Lcom/aide/uidesigner/a;)Lcom/aide/uidesigner/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/aa;->DW:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    throw v0
.end method
