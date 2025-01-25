.class Lcom/s1243808733/aide/highlight/HighlightActivity$1;
.super Ljava/lang/Object;
.source "HighlightActivity.java"

# interfaces
.implements Lnet/margaritov/preference/colorpicker/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/s1243808733/aide/highlight/HighlightActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

.field final val$item:Lcom/s1243808733/aide/highlight/Item;


# direct methods
.method constructor <init>(Lcom/s1243808733/aide/highlight/HighlightActivity;Lcom/s1243808733/aide/highlight/Item;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$1;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    iput-object p2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$1;->val$item:Lcom/s1243808733/aide/highlight/Item;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .registers 5

    .line 131
    invoke-static {}, Lcom/s1243808733/aide/highlight/HighlightUtils;->getHSp()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$1;->val$item:Lcom/s1243808733/aide/highlight/Item;

    iget-object v2, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$1;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {v2}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/highlight/HighlightActivity;)Lcom/s1243808733/aide/highlight/HighlightAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->isLight()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/s1243808733/aide/highlight/Item;->getSpKey(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lnet/margaritov/preference/colorpicker/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$1;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    invoke-static {p1}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fgetadapter(Lcom/s1243808733/aide/highlight/HighlightActivity;)Lcom/s1243808733/aide/highlight/HighlightAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/s1243808733/aide/highlight/HighlightAdapter;->notifyDataSetChanged()V

    .line 133
    iget-object p1, p0, Lcom/s1243808733/aide/highlight/HighlightActivity$1;->this$0:Lcom/s1243808733/aide/highlight/HighlightActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/s1243808733/aide/highlight/HighlightActivity;->-$$Nest$fputisDataChangeed(Lcom/s1243808733/aide/highlight/HighlightActivity;Z)V

    return-void
.end method
