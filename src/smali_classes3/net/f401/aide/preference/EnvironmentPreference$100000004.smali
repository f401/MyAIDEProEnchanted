.class Lnet/f401/aide/preference/EnvironmentPreference$100000004;
.super Ljava/lang/Object;
.source "EnvironmentPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final val$finisher:Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;

.field private final val$nameWidget:Landroid/widget/EditText;

.field private final val$valueWidget:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$finisher:Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;

    iput-object p2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$nameWidget:Landroid/widget/EditText;

    iput-object p3, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$valueWidget:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 137
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$finisher:Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$finisher:Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;

    iget-object v1, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$nameWidget:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/f401/aide/preference/EnvironmentPreference$100000004;->val$valueWidget:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/f401/aide/preference/EnvironmentPreference$EditEnvVarContext;->finish(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
