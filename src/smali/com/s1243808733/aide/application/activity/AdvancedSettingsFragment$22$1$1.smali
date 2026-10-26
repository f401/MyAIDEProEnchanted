.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1$1;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$2:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;)V
    .locals 0

    .line 844
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1$1;->this$2:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2

    .line 848
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodeHighlight_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
