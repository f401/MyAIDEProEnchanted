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
        "Lcom/aide/common/ab<",
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
    .registers 5

    const-wide v0, 0x1c796187b3007d70L  # 1.6419155400031285E-171

    const-wide v2, 0x1dd13d49441c3915L  # 4.677615406558868E-165

    const-class v4, Lcom/aide/uidesigner/aa;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

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

    const-wide v0, 0x441630332d1a580L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/aa;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    invoke-static {}, Lcom/aide/uidesigner/ka;->j6()Lcom/aide/uidesigner/s;

    move-result-object v2

    iget-object v3, p0, Lcom/aide/uidesigner/aa;->FH:Landroid/content/Intent;

    invoke-virtual {v2, p1, v3}, Lcom/aide/uidesigner/s;->j6(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-static {}, Lcom/aide/uidesigner/ka;->j6()Lcom/aide/uidesigner/s;

    move-result-object v2

    invoke-static {}, Lcom/aide/uidesigner/ka;->DW()Lcom/aide/uidesigner/a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "@drawable/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/aide/uidesigner/s;->j6(Lcom/aide/uidesigner/a;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/aide/uidesigner/ka;->j6(Lcom/aide/uidesigner/s;)Lcom/aide/uidesigner/s;

    invoke-static {v2}, Lcom/aide/uidesigner/ka;->j6(Lcom/aide/uidesigner/a;)Lcom/aide/uidesigner/a;
    :try_end_38
    .catchall {:try_start_5 .. :try_end_38} :catchall_39

    return-void

    :catchall_39
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/aa;->DW:Z

    if-eqz v3, :cond_41

    invoke-static {v2, v0, v1, p0, p1}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;Ljava/lang/Object;)V

    :cond_41
    throw v2
.end method
