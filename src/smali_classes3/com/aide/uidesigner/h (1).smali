.class Lcom/aide/uidesigner/h;
.super Ljava/lang/Object;

# interfaces
.implements Labcd/G;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aide/uidesigner/XmlLayoutDesignActivity;->onCreate(Landroid/os/Bundle;)V
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
.field final FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;
    .annotation runtime Labcd/vu;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const-wide v0, -0x26532fe3199dbf1fL  # -9.523483305966733E123

    const-wide v2, 0x145e430a92209600L

    const-class v4, Lcom/aide/uidesigner/h;

    invoke-static {v4, v0, v1, v2, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    return-void
.end method

.method constructor <init>(Lcom/aide/uidesigner/XmlLayoutDesignActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/aide/uidesigner/h;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public j6()Z
    .registers 6
    .annotation runtime Labcd/su;
        method = -0x5c8bc50e296d567fL
    .end annotation

    const-wide v0, -0xa3a2e36be5fb277L

    :try_start_5
    sget-boolean v2, Lcom/aide/uidesigner/h;->j6:Z

    if-eqz v2, :cond_c

    invoke-static {v0, v1, p0}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_c
    iget-object v2, p0, Lcom/aide/uidesigner/h;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.aide.designer"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1c

    return v3

    :cond_1c
    iget-object v2, p0, Lcom/aide/uidesigner/h;->FH:Lcom/aide/uidesigner/XmlLayoutDesignActivity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "send_analytics_data"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    return v0

    :catchall_29
    move-exception v2

    sget-boolean v3, Lcom/aide/uidesigner/h;->DW:Z

    if-eqz v3, :cond_31

    invoke-static {v2, v0, v1, p0}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_31
    throw v2
.end method
