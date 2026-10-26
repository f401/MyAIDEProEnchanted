.class Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$2;
.super Ljava/lang/Object;
.source "AdvancedSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

.field final val$states:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 818
    iput-object p1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$2;->this$1:Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22;

    iput-object p2, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$2;->val$states:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3

    .line 822
    iget-object v1, p0, Lcom/s1243808733/aide/application/activity/AdvancedSettingsFragment$22$2;->val$states:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
