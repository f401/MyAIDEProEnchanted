.class Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# instance fields
.field private final this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

.field private final val$item:Lcom/s1243808733/aide/highlight/Item;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity;Lcom/s1243808733/aide/highlight/Item;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;->val$item:Lcom/s1243808733/aide/highlight/Item;

    return-void
.end method

.method static access$0(Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;)Lcom/s1243808733/aide/highlight/HighlightActivity;
    .registers 2

    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    return-object v0
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .line 131
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;->val$item:Lcom/s1243808733/aide/highlight/Item;

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v2}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$L1000002(Lcom/s1243808733/aide/highlight/HighlightActivity;)Lcom/s1243808733/aide/highlight/HighlightAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$L1000002(Lcom/s1243808733/aide/highlight/HighlightActivity;)Lcom/s1243808733/aide/highlight/HighlightAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->notifyDataSetChanged()V

    .line 133
    iget-object v0, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$100000000;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->access$S1000003(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V

    return-void
.end method
