.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032$100000031;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032$100000031;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032$100000031;)Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032$100000031;->this$0:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$100000033$100000032;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 907
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CodeHighlight_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
