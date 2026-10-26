.class Lnet/f401/aide/preference/EnvironmentPreference$100000003;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final this$0:Lnet/f401/aide/preference/EnvironmentPreference;

.field private final val$keyText:Landroid/widget/EditText;

.field private final val$valueText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    iput-object p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$keyText:Landroid/widget/EditText;

    iput-object p3, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$valueText:Landroid/widget/EditText;

    return-void
.end method

.method static access$0(Lnet/f401/aide/preference/EnvironmentPreference$100000003;)Lnet/f401/aide/preference/EnvironmentPreference;
    .locals 1

    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 140
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$keyText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$valueText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/f401/aide/FUtils;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->this$0:Lnet/f401/aide/preference/EnvironmentPreference;

    invoke-static {v0}, Lnet/f401/aide/preference/EnvironmentPreference;->access$L1000000(Lnet/f401/aide/preference/EnvironmentPreference;)Lnet/f401/aide/EnvPreferenceAdapter;

    move-result-object v0

    iget-object v1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$keyText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000003;->val$valueText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/f401/aide/EnvPreferenceAdapter;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
