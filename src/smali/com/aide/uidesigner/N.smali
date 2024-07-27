.class public Lcom/aide/uidesigner/N;
.super Ljava/lang/Object;


# annotations
.annotation runtime Labcd/xu;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aide/uidesigner/N$a;,
        Lcom/aide/uidesigner/N$b;
    }
.end annotation


# static fields
.field public static DW:Lcom/aide/uidesigner/N$a;

.field private static EQ:Z
    .annotation runtime Labcd/uu;
    .end annotation
.end field

.field public static FH:Lcom/aide/uidesigner/N$a;

.field public static Hw:Lcom/aide/uidesigner/N$a;

.field public static VH:[Lcom/aide/uidesigner/N$a;

.field public static Zo:Lcom/aide/uidesigner/N$a;

.field public static gn:[Lcom/aide/uidesigner/N$a;

.field public static j6:Lcom/aide/uidesigner/N$a;

.field private static tp:Z
    .annotation runtime Labcd/tu;
    .end annotation
.end field

.field public static u7:[Lcom/aide/uidesigner/N$a;

.field public static v5:Lcom/aide/uidesigner/N$a;


# direct methods
.method static constructor <clinit>()V
    .registers 119
    .annotation runtime Labcd/su;
        method = 0x1bd822e41fa3303cL
    .end annotation

    :try_start_0
    const-class v6, Lcom/aide/uidesigner/N;

    const-wide v8, -0x2703a589b2afad3L

    const-wide v10, -0x2703a589b2afad3L

    invoke-static {v6, v8, v9, v10, v11}, Labcd/ApplicationUtils;->j6(Ljava/lang/Class;JJ)V

    sget-boolean v6, Lcom/aide/uidesigner/N;->tp:Z

    if-eqz v6, :cond_0

    const-wide v6, -0x2bcfc5400f7211a3L    # -3.466598294562935E97

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.widget.RelativeLayout$LayoutParams"

    const-string v8, "layout_toRightOf"

    const-string v9, "ProxyRelativeLayoutParams"

    const-string v10, "setRightOf()"

    sget-object v11, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v6 .. v11}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->j6:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.widget.RelativeLayout$LayoutParams"

    const-string v8, "layout_toLeftOf"

    const-string v9, "ProxyRelativeLayoutParams"

    const-string v10, "setLeftOf()"

    sget-object v11, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v6 .. v11}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->DW:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.widget.RelativeLayout$LayoutParams"

    const-string v8, "layout_below"

    const-string v9, "ProxyRelativeLayoutParams"

    const-string v10, "setBelow()"

    sget-object v11, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v6 .. v11}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->FH:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.widget.RelativeLayout$LayoutParams"

    const-string v8, "layout_above"

    const-string v9, "ProxyRelativeLayoutParams"

    const-string v10, "setAbove()"

    sget-object v11, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v6 .. v11}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->Hw:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.ViewGroup$LayoutParams"

    const-string v8, "layout_width"

    const-string v9, "width"

    sget-object v10, Lcom/aide/uidesigner/N$b;->FH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->v5:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.ViewGroup$LayoutParams"

    const-string v8, "layout_height"

    const-string v9, "height"

    sget-object v10, Lcom/aide/uidesigner/N$b;->FH:Lcom/aide/uidesigner/N$b;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sput-object v6, Lcom/aide/uidesigner/N;->Zo:Lcom/aide/uidesigner/N$a;

    sget-object v38, Lcom/aide/uidesigner/N;->v5:Lcom/aide/uidesigner/N$a;

    sget-object v39, Lcom/aide/uidesigner/N;->Zo:Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.ViewGroup$MarginLayoutParams"

    const-string v8, "layout_margin"

    const-string v9, "ProxyMarginLayoutParams"

    const-string v10, "setMargin()"

    sget-object v11, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v6 .. v11}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v40, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.ViewGroup$MarginLayoutParams"

    const-string v8, "layout_marginLeft"

    const-string v9, "leftMargin"

    sget-object v10, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v40

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v41, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.ViewGroup$MarginLayoutParams"

    const-string v8, "layout_marginRight"

    const-string v9, "rightMargin"

    sget-object v10, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v41

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v42, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.ViewGroup$MarginLayoutParams"

    const-string v8, "layout_marginTop"

    const-string v9, "topMargin"

    sget-object v10, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v42

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v43, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.ViewGroup$MarginLayoutParams"

    const-string v8, "layout_marginBottom"

    const-string v9, "bottomMargin"

    sget-object v10, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v43

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v44, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.ViewGroup$MarginLayoutParams"

    const-string v8, "layout_marginStart"

    const-string v9, "setMarginStart()"

    sget-object v10, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v44

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v45, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.ViewGroup$MarginLayoutParams"

    const-string v8, "layout_marginEnd"

    const-string v9, "setMarginEnd()"

    sget-object v10, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v45

    invoke-direct {v0, v7, v8, v9, v10}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v7, Lcom/aide/uidesigner/N$a;

    const-string v8, "android.widget.LinearLayout$LayoutParams"

    const-string v9, "layout_gravity"

    const-string v10, "gravity"

    sget-object v11, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v12, "android.view.Gravity"

    const/4 v13, 0x0

    invoke-direct/range {v7 .. v13}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v46, Lcom/aide/uidesigner/N$a;

    const-string v8, "android.widget.LinearLayout$LayoutParams"

    const-string v9, "layout_weight"

    const-string v10, "weight"

    sget-object v11, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v46

    invoke-direct {v0, v8, v9, v10, v11}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    sget-object v47, Lcom/aide/uidesigner/N;->FH:Lcom/aide/uidesigner/N$a;

    sget-object v48, Lcom/aide/uidesigner/N;->Hw:Lcom/aide/uidesigner/N$a;

    sget-object v49, Lcom/aide/uidesigner/N;->j6:Lcom/aide/uidesigner/N$a;

    sget-object v50, Lcom/aide/uidesigner/N;->DW:Lcom/aide/uidesigner/N$a;

    new-instance v8, Lcom/aide/uidesigner/N$a;

    const-string v9, "android.widget.RelativeLayout$LayoutParams"

    const-string v10, "layout_toEndOf"

    const-string v11, "ProxyRelativeLayoutParams"

    const-string v12, "setEndOf()"

    sget-object v13, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v8 .. v13}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v9, Lcom/aide/uidesigner/N$a;

    const-string v10, "android.widget.RelativeLayout$LayoutParams"

    const-string v11, "layout_toStartOf"

    const-string v12, "ProxyRelativeLayoutParams"

    const-string v13, "setStartOf()"

    sget-object v14, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v9 .. v14}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v10, Lcom/aide/uidesigner/N$a;

    const-string v11, "android.widget.RelativeLayout$LayoutParams"

    const-string v12, "layout_alignBaseline"

    const-string v13, "ProxyRelativeLayoutParams"

    const-string v14, "setAlignBaseline()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v10 .. v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v11, Lcom/aide/uidesigner/N$a;

    const-string v12, "android.widget.RelativeLayout$LayoutParams"

    const-string v13, "layout_alignBottom"

    const-string v14, "ProxyRelativeLayoutParams"

    const-string v15, "setAlignBottom()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v11 .. v16}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.widget.RelativeLayout$LayoutParams"

    const-string v14, "layout_alignTop"

    const-string v15, "ProxyRelativeLayoutParams"

    const-string v16, "setAlignTop()"

    sget-object v17, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v12 .. v17}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v13, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.widget.RelativeLayout$LayoutParams"

    const-string v15, "layout_alignEnd"

    const-string v16, "ProxyRelativeLayoutParams"

    const-string v17, "setAlignEnd()"

    sget-object v18, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v13 .. v18}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v14, Lcom/aide/uidesigner/N$a;

    const-string v15, "android.widget.RelativeLayout$LayoutParams"

    const-string v16, "layout_alignStart"

    const-string v17, "ProxyRelativeLayoutParams"

    const-string v18, "setAlignStart()"

    sget-object v19, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v14 .. v19}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v15, Lcom/aide/uidesigner/N$a;

    const-string v16, "android.widget.RelativeLayout$LayoutParams"

    const-string v17, "layout_alignRight"

    const-string v18, "ProxyRelativeLayoutParams"

    const-string v19, "setAlignRight()"

    sget-object v20, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v15 .. v20}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v16, Lcom/aide/uidesigner/N$a;

    const-string v17, "android.widget.RelativeLayout$LayoutParams"

    const-string v18, "layout_alignLeft"

    const-string v19, "ProxyRelativeLayoutParams"

    const-string v20, "setAlignLeft()"

    sget-object v21, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v16 .. v21}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v17, Lcom/aide/uidesigner/N$a;

    const-string v18, "android.widget.RelativeLayout$LayoutParams"

    const-string v19, "layout_alignParentBottom"

    const-string v20, "ProxyRelativeLayoutParams"

    const-string v21, "setAlignParentBottom()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v17 .. v22}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v18, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.RelativeLayout$LayoutParams"

    const-string v20, "layout_alignParentEnd"

    const-string v21, "ProxyRelativeLayoutParams"

    const-string v22, "setAlignParentEnd()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v18 .. v23}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v19, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.RelativeLayout$LayoutParams"

    const-string v21, "layout_alignParentLeft"

    const-string v22, "ProxyRelativeLayoutParams"

    const-string v23, "setAlignParentLeft()"

    sget-object v24, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v19 .. v24}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v20, Lcom/aide/uidesigner/N$a;

    const-string v21, "android.widget.RelativeLayout$LayoutParams"

    const-string v22, "layout_alignParentRight"

    const-string v23, "ProxyRelativeLayoutParams"

    const-string v24, "setAlignParentRight()"

    sget-object v25, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v20 .. v25}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v21, Lcom/aide/uidesigner/N$a;

    const-string v22, "android.widget.RelativeLayout$LayoutParams"

    const-string v23, "layout_alignParentStart"

    const-string v24, "ProxyRelativeLayoutParams"

    const-string v25, "setAlignParentStart()"

    sget-object v26, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v21 .. v26}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v22, Lcom/aide/uidesigner/N$a;

    const-string v23, "android.widget.RelativeLayout$LayoutParams"

    const-string v24, "layout_alignParentTop"

    const-string v25, "ProxyRelativeLayoutParams"

    const-string v26, "setAlignParentTop()"

    sget-object v27, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v22 .. v27}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v23, Lcom/aide/uidesigner/N$a;

    const-string v24, "android.widget.RelativeLayout$LayoutParams"

    const-string v25, "layout_centerHorizontal"

    const-string v26, "ProxyRelativeLayoutParams"

    const-string v27, "setCenterHorizontal()"

    sget-object v28, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v23 .. v28}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v24, Lcom/aide/uidesigner/N$a;

    const-string v25, "android.widget.RelativeLayout$LayoutParams"

    const-string v26, "layout_centerVertical"

    const-string v27, "ProxyRelativeLayoutParams"

    const-string v28, "setCenterVertical()"

    sget-object v29, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v24 .. v29}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v25, Lcom/aide/uidesigner/N$a;

    const-string v26, "android.widget.RelativeLayout$LayoutParams"

    const-string v27, "layout_centerInParent"

    const-string v28, "ProxyRelativeLayoutParams"

    const-string v29, "setCenterInParent()"

    sget-object v30, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v25 .. v30}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v26, Lcom/aide/uidesigner/N$a;

    const-string v27, "android.widget.GridLayout$LayoutParams"

    const-string v28, "layout_gravity"

    const-string v29, "ProxyGridLayoutParams"

    const-string v30, "setGravity()"

    sget-object v31, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v32, "android.view.Gravity"

    const/16 v33, 0x0

    invoke-direct/range {v26 .. v33}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v27, Lcom/aide/uidesigner/N$a;

    const-string v28, "android.widget.GridLayout$LayoutParams"

    const-string v29, "layout_column"

    const-string v30, "ProxyGridLayoutParams"

    const-string v31, "setColumn()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v27 .. v32}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v28, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.GridLayout$LayoutParams"

    const-string v30, "layout_columnSpan"

    const-string v31, "ProxyGridLayoutParams"

    const-string v32, "setColumnSpan()"

    sget-object v33, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v28 .. v33}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v29, Lcom/aide/uidesigner/N$a;

    const-string v30, "android.widget.GridLayout$LayoutParams"

    const-string v31, "layout_row"

    const-string v32, "ProxyGridLayoutParams"

    const-string v33, "setRow()"

    sget-object v34, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v29 .. v34}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v30, Lcom/aide/uidesigner/N$a;

    const-string v31, "android.widget.GridLayout$LayoutParams"

    const-string v32, "layout_rowSpan"

    const-string v33, "ProxyGridLayoutParams"

    const-string v34, "setRowSpan()"

    sget-object v35, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v30 .. v35}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v31, Lcom/aide/uidesigner/N$a;

    const-string v32, "android.widget.FrameLayout$LayoutParams"

    const-string v33, "layout_gravity"

    const-string v34, "gravity"

    sget-object v35, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v36, "android.view.Gravity"

    const/16 v37, 0x0

    invoke-direct/range {v31 .. v37}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v32, Lcom/aide/uidesigner/N$a;

    const-string v33, "android.widget.TableRow$LayoutParams"

    const-string v34, "layout_span"

    const-string v35, "span"

    sget-object v36, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v32 .. v36}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v33, Lcom/aide/uidesigner/N$a;

    const-string v34, "android.widget.TableRow$LayoutParams"

    const-string v35, "layout_column"

    const-string v36, "column"

    sget-object v37, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v33 .. v37}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v34, Lcom/aide/uidesigner/N$a;

    const-string v35, "android.widget.AbsoluteLayout$LayoutParams"

    const-string v36, "layout_x"

    const-string v37, "x"

    sget-object v51, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v51

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v35, Lcom/aide/uidesigner/N$a;

    const-string v36, "android.widget.AbsoluteLayout$LayoutParams"

    const-string v37, "layout_y"

    const-string v51, "y"

    sget-object v52, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v51

    move-object/from16 v4, v52

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    const/16 v36, 0x2b

    move/from16 v0, v36

    new-array v0, v0, [Lcom/aide/uidesigner/N$a;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aput-object v38, v36, v37

    const/16 v37, 0x1

    aput-object v39, v36, v37

    const/16 v37, 0x2

    aput-object v6, v36, v37

    const/4 v6, 0x3

    aput-object v40, v36, v6

    const/4 v6, 0x4

    aput-object v41, v36, v6

    const/4 v6, 0x5

    aput-object v42, v36, v6

    const/4 v6, 0x6

    aput-object v43, v36, v6

    const/4 v6, 0x7

    aput-object v44, v36, v6

    const/16 v6, 0x8

    aput-object v45, v36, v6

    const/16 v6, 0x9

    aput-object v7, v36, v6

    const/16 v6, 0xa

    aput-object v46, v36, v6

    const/16 v6, 0xb

    aput-object v47, v36, v6

    const/16 v6, 0xc

    aput-object v48, v36, v6

    const/16 v6, 0xd

    aput-object v49, v36, v6

    const/16 v6, 0xe

    aput-object v50, v36, v6

    const/16 v6, 0xf

    aput-object v8, v36, v6

    const/16 v6, 0x10

    aput-object v9, v36, v6

    const/16 v6, 0x11

    aput-object v10, v36, v6

    const/16 v6, 0x12

    aput-object v11, v36, v6

    const/16 v6, 0x13

    aput-object v12, v36, v6

    const/16 v6, 0x14

    aput-object v13, v36, v6

    const/16 v6, 0x15

    aput-object v14, v36, v6

    const/16 v6, 0x16

    aput-object v15, v36, v6

    const/16 v6, 0x17

    aput-object v16, v36, v6

    const/16 v6, 0x18

    aput-object v17, v36, v6

    const/16 v6, 0x19

    aput-object v18, v36, v6

    const/16 v6, 0x1a

    aput-object v19, v36, v6

    const/16 v6, 0x1b

    aput-object v20, v36, v6

    const/16 v6, 0x1c

    aput-object v21, v36, v6

    const/16 v6, 0x1d

    aput-object v22, v36, v6

    const/16 v6, 0x1e

    aput-object v23, v36, v6

    const/16 v6, 0x1f

    aput-object v24, v36, v6

    const/16 v6, 0x20

    aput-object v25, v36, v6

    const/16 v6, 0x21

    aput-object v26, v36, v6

    const/16 v6, 0x22

    aput-object v27, v36, v6

    const/16 v6, 0x23

    aput-object v28, v36, v6

    const/16 v6, 0x24

    aput-object v29, v36, v6

    const/16 v6, 0x25

    aput-object v30, v36, v6

    const/16 v6, 0x26

    aput-object v31, v36, v6

    const/16 v6, 0x27

    aput-object v32, v36, v6

    const/16 v6, 0x28

    aput-object v33, v36, v6

    const/16 v6, 0x29

    aput-object v34, v36, v6

    const/16 v6, 0x2a

    aput-object v35, v36, v6

    sput-object v36, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    new-instance v6, Lcom/aide/uidesigner/N$a;

    const-string v7, "android.view.View"

    const-string v8, "padding"

    const-string v9, "ProxyViewPaddings"

    const-string v10, "setPadding()"

    sget-object v11, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v6 .. v11}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v7, Lcom/aide/uidesigner/N$a;

    const-string v8, "android.view.View"

    const-string v9, "paddingLeft"

    const-string v10, "ProxyViewPaddings"

    const-string v11, "setPaddingLeft()"

    sget-object v12, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v7 .. v12}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v8, Lcom/aide/uidesigner/N$a;

    const-string v9, "android.view.View"

    const-string v10, "paddingRight"

    const-string v11, "ProxyViewPaddings"

    const-string v12, "setPaddingRight()"

    sget-object v13, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v8 .. v13}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v9, Lcom/aide/uidesigner/N$a;

    const-string v10, "android.view.View"

    const-string v11, "paddingTop"

    const-string v12, "ProxyViewPaddings"

    const-string v13, "setPaddingTop()"

    sget-object v14, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v9 .. v14}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v10, Lcom/aide/uidesigner/N$a;

    const-string v11, "android.view.View"

    const-string v12, "paddingBottom"

    const-string v13, "ProxyViewPaddings"

    const-string v14, "setPaddingBottom()"

    sget-object v15, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v10 .. v15}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v11, Lcom/aide/uidesigner/N$a;

    const-string v12, "android.view.View"

    const-string v13, "paddingStart"

    const-string v14, "ProxyViewPaddings"

    const-string v15, "setPaddingStart()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v11 .. v16}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v12, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "paddingEnd"

    const-string v15, "ProxyViewPaddings"

    const-string v16, "setPaddingEnd()"

    sget-object v17, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v12 .. v17}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v36, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "alpha"

    const-string v15, "setAlpha()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v37, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "scaleX"

    const-string v15, "setScaleX()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v37

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v38, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "scaleY"

    const-string v15, "setScaleY()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v39, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "translationX"

    const-string v15, "setTranslationX()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v40, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "translationY"

    const-string v15, "setTranslationY()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v41, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "translationZ"

    const-string v15, "setTranslationZ()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v41

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v42, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "rotation"

    const-string v15, "setRotation()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v42

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v43, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "rotationX"

    const-string v15, "setRotationX()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v44, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "rotationY"

    const-string v15, "setRotationY()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v44

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v45, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "elevation"

    const-string v15, "setElevation()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->v5:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v45

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v46, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "minHeight"

    const-string v15, "setMinimumHeight()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v46

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v47, Lcom/aide/uidesigner/N$a;

    const-string v13, "android.view.View"

    const-string v14, "minWidth"

    const-string v15, "setMinimumWidth()"

    sget-object v16, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v47

    move-object/from16 v1, v16

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v13, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.view.View"

    const-string v15, "textAlignment"

    const-string v16, "setTextAlignment()"

    sget-object v17, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v18, "android.view.View"

    const-string v19, "TEXT_ALIGNMENT"

    invoke-direct/range {v13 .. v19}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v48, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.view.View"

    const-string v15, "visibility"

    const-string v16, "setVisibility()"

    sget-object v17, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v48

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v49, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.view.View"

    const-string v15, "background"

    const-string v16, "setBackgroundDrawable()"

    sget-object v17, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v49

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v50, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.view.View"

    const-string v15, "onClick"

    const-string v16, ""

    sget-object v17, Lcom/aide/uidesigner/N$b;->QX:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v50

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v51, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.view.ViewGroup"

    const-string v15, "clipChildren"

    const-string v16, "setClipChildren()"

    sget-object v17, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v51

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v52, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.view.ViewGroup"

    const-string v15, "clipToPadding"

    const-string v16, "setClipToPadding()"

    sget-object v17, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v52

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v53, Lcom/aide/uidesigner/N$a;

    const-string v14, "android.widget.LinearLayout"

    const-string v15, "orientation"

    const-string v16, "setOrientation()"

    sget-object v17, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v53

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v14, v15, v1, v2}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v14, Lcom/aide/uidesigner/N$a;

    const-string v15, "android.widget.LinearLayout"

    const-string v16, "gravity"

    const-string v17, "setGravity()"

    sget-object v18, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v19, "android.view.Gravity"

    const/16 v20, 0x0

    invoke-direct/range {v14 .. v20}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v54, Lcom/aide/uidesigner/N$a;

    const-string v15, "android.widget.LinearLayout"

    const-string v16, "baselineAligned"

    const-string v17, "setBaselineAligned()"

    sget-object v18, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v54

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v55, Lcom/aide/uidesigner/N$a;

    const-string v15, "android.widget.LinearLayout"

    const-string v16, "baselineAlignedChildIndex"

    const-string v17, "setBaselineAlignedChildIndex()"

    sget-object v18, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v55

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v56, Lcom/aide/uidesigner/N$a;

    const-string v15, "android.widget.LinearLayout"

    const-string v16, "measureWithLargestChild"

    const-string v17, "setMeasureWithLargestChildEnabled()"

    sget-object v18, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v56

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v57, Lcom/aide/uidesigner/N$a;

    const-string v15, "android.widget.LinearLayout"

    const-string v16, "weightSum"

    const-string v17, "setWeightSum()"

    sget-object v18, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v57

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v15, v1, v2, v3}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v15, Lcom/aide/uidesigner/N$a;

    const-string v16, "android.widget.RelativeLayout"

    const-string v17, "gravity"

    const-string v18, "setGravity()"

    sget-object v19, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v20, "android.view.Gravity"

    const/16 v21, 0x0

    invoke-direct/range {v15 .. v21}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v58, Lcom/aide/uidesigner/N$a;

    const-string v16, "android.widget.RelativeLayout"

    const-string v17, "ignoreGravity"

    const-string v18, "setIgnoreGravity()"

    sget-object v19, Lcom/aide/uidesigner/N$b;->EQ:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v58

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v16, Lcom/aide/uidesigner/N$a;

    const-string v17, "android.widget.FrameLayout"

    const-string v18, "foregroundGravity"

    const-string v19, "setForegroundGravity()"

    sget-object v20, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v21, "android.view.Gravity"

    const/16 v22, 0x0

    invoke-direct/range {v16 .. v22}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v59, Lcom/aide/uidesigner/N$a;

    const-string v17, "android.widget.FrameLayout"

    const-string v18, "measureAllChildren"

    const-string v19, "setMeasureAllChildren()"

    sget-object v20, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v59

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v60, Lcom/aide/uidesigner/N$a;

    const-string v17, "android.widget.GridLayout"

    const-string v18, "columnCount"

    const-string v19, "setColumnCount()"

    sget-object v20, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v60

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v61, Lcom/aide/uidesigner/N$a;

    const-string v17, "android.widget.GridLayout"

    const-string v18, "rowCount"

    const-string v19, "setRowCount()"

    sget-object v20, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v61

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v62, Lcom/aide/uidesigner/N$a;

    const-string v17, "android.widget.GridLayout"

    const-string v18, "orientation"

    const-string v19, "setOrientation()"

    sget-object v20, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v62

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v63, Lcom/aide/uidesigner/N$a;

    const-string v17, "android.widget.GridLayout"

    const-string v18, "columnOrderPreserved"

    const-string v19, "setColumnOrderPreserved()"

    sget-object v20, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v63

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v64, Lcom/aide/uidesigner/N$a;

    const-string v17, "android.widget.GridLayout"

    const-string v18, "rowOrderPreserved"

    const-string v19, "setRowOrderPreserved()"

    sget-object v20, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v64

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v65, Lcom/aide/uidesigner/N$a;

    const-string v17, "android.widget.GridLayout"

    const-string v18, "useDefaultMargins"

    const-string v19, "setUseDefaultMargins()"

    sget-object v20, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v65

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v17, Lcom/aide/uidesigner/N$a;

    const-string v18, "android.widget.GridLayout"

    const-string v19, "alignmentMode"

    const-string v20, "setAlignmentMode()"

    sget-object v21, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v22, "android.widget.GridLayout"

    const-string v23, "ALIGN"

    invoke-direct/range {v17 .. v23}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "textAppearance"

    const-string v21, "ProxyTextView"

    const-string v22, "setTextAppearance()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->Ws:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v18 .. v23}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v66, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "text"

    const-string v21, "setText()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v66

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v67, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "hint"

    const-string v21, "setHint()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v67

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v68, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "height"

    const-string v21, "setHeight()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v68

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v69, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "width"

    const-string v21, "setWidth()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v69

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v70, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "maxHeight"

    const-string v21, "setMaxHeight()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v70

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v71, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "maxWidth"

    const-string v21, "setMaxWidth()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v71

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v72, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "ems"

    const-string v21, "setEms()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v72

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v73, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "minEms"

    const-string v21, "setMinEms()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v73

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v74, Lcom/aide/uidesigner/N$a;

    const-string v19, "android.widget.TextView"

    const-string v20, "maxEms"

    const-string v21, "setMaxEms()"

    sget-object v22, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v74

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v19, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "gravity"

    const-string v22, "setGravity()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v24, "android.view.Gravity"

    const/16 v25, 0x0

    invoke-direct/range {v19 .. v25}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v75, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "textScaleX"

    const-string v22, "setTextScaleX()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v75

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v76, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "textScaleY"

    const-string v22, "setTextScaleY()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v76

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v77, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "textIsSelectable"

    const-string v22, "setTextIsSelectable()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v77

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v78, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "singleLine"

    const-string v22, "setSingleLine()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v78

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v79, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "lines"

    const-string v22, "setLines()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v79

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v80, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "minLines"

    const-string v22, "setMinLines()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v80

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v81, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "maxLines"

    const-string v22, "setMaxLines()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v81

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v82, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "textColor"

    const-string v22, "setTextColor()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v82

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v83, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "textColorHighlight"

    const-string v22, "setHighlightColor()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v83

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v84, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "textColorHint"

    const-string v22, "setHintTextColor()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v84

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v85, Lcom/aide/uidesigner/N$a;

    const-string v20, "android.widget.TextView"

    const-string v21, "textColorLink"

    const-string v22, "setLinkTextColor()"

    sget-object v23, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v85

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v20, Lcom/aide/uidesigner/N$a;

    const-string v21, "android.widget.TextView"

    const-string v22, "ellipsize"

    const-string v23, "setEllipsize()"

    sget-object v24, Lcom/aide/uidesigner/N$b;->DW:Lcom/aide/uidesigner/N$b;

    const-string v25, "android.text.TextUtils$TruncateAt"

    const/16 v26, 0x0

    invoke-direct/range {v20 .. v26}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Lcom/aide/uidesigner/N$a;

    const-string v22, "android.widget.TextView"

    const-string v23, "textStyle"

    const-string v24, "ProxyTextView"

    const-string v25, "setTextStyle()"

    sget-object v26, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v27, "ProxyTextView"

    const-string v28, "TEXTSTYLE"

    invoke-direct/range {v21 .. v28}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v22, Lcom/aide/uidesigner/N$a;

    const-string v23, "android.widget.TextView"

    const-string v24, "typeface"

    const-string v25, "ProxyTextView"

    const-string v26, "setTypeface()"

    sget-object v27, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v28, "ProxyTextView"

    const-string v29, "TYPEFACE"

    invoke-direct/range {v22 .. v29}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v23, Lcom/aide/uidesigner/N$a;

    const-string v24, "android.widget.TextView"

    const-string v25, "inputType"

    const-string v26, "ProxyTextView"

    const-string v27, "setInputType()"

    sget-object v28, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v29, "ProxyTextView"

    const-string v30, "INPUTTYPE"

    invoke-direct/range {v23 .. v30}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v86, Lcom/aide/uidesigner/N$a;

    const-string v24, "android.widget.TextView"

    const-string v25, "textSize"

    const-string v26, "setTextSize()"

    sget-object v27, Lcom/aide/uidesigner/N$b;->Zo:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v86

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v24, Lcom/aide/uidesigner/N$a;

    const-string v25, "android.widget.TextView"

    const-string v26, "shadowColor"

    const-string v27, "ProxyTextView"

    const-string v28, "setShadowColor()"

    sget-object v29, Lcom/aide/uidesigner/N$b;->we:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v24 .. v29}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v25, Lcom/aide/uidesigner/N$a;

    const-string v26, "android.widget.TextView"

    const-string v27, "shadowDx"

    const-string v28, "ProxyTextView"

    const-string v29, "setShadowDx()"

    sget-object v30, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v25 .. v30}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v26, Lcom/aide/uidesigner/N$a;

    const-string v27, "android.widget.TextView"

    const-string v28, "shadowDy"

    const-string v29, "ProxyTextView"

    const-string v30, "setShadowDy()"

    sget-object v31, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v26 .. v31}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v27, Lcom/aide/uidesigner/N$a;

    const-string v28, "android.widget.TextView"

    const-string v29, "shadowRadius"

    const-string v30, "ProxyTextView"

    const-string v31, "setShadowRadius()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v27 .. v32}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v87, Lcom/aide/uidesigner/N$a;

    const-string v28, "android.widget.ScrollView"

    const-string v29, "fillViewport"

    const-string v30, "setFillViewport()"

    sget-object v31, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v87

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v88, Lcom/aide/uidesigner/N$a;

    const-string v28, "android.widget.ImageView"

    const-string v29, "src"

    const-string v30, "setImageDrawable()"

    sget-object v31, Lcom/aide/uidesigner/N$b;->J8:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v88

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    move-object/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v28, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ImageView"

    const-string v30, "scaleType"

    const-string v31, "setScaleType()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->DW:Lcom/aide/uidesigner/N$b;

    const-string v33, "android.widget.ImageView$ScaleType"

    const/16 v34, 0x0

    invoke-direct/range {v28 .. v34}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v89, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ImageView"

    const-string v30, "adjustViewBounds"

    const-string v31, "setAdjustViewBounds()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v89

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v90, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ImageView"

    const-string v30, "baseLine"

    const-string v31, "setBaseLine()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v90

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v91, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ImageView"

    const-string v30, "baselineAlignBottom"

    const-string v31, "setBaselineAlignBottom()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v91

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v92, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ImageView"

    const-string v30, "cropToPadding"

    const-string v31, "setCropToPadding()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v92

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v93, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ImageView"

    const-string v30, "maxHeight"

    const-string v31, "setMaxHeight()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v93

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v94, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ImageView"

    const-string v30, "maxWidth"

    const-string v31, "setMaxWidth()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v94

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v95, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ProgressBar"

    const-string v30, "indeterminate"

    const-string v31, "setIndeterminate()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v95

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v96, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ProgressBar"

    const-string v30, "indeterminateOnly"

    const-string v31, "setIndeterminate()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v96

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v97, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ProgressBar"

    const-string v30, "indeterminateDrawable"

    const-string v31, "setIndeterminateDrawable()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->J8:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v97

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v98, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ProgressBar"

    const-string v30, "progressDrawable"

    const-string v31, "setProgressDrawable()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->J8:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v98

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v99, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.Switch"

    const-string v30, "switchMinWidth"

    const-string v31, "setSwitchMinWidth()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v99

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v100, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.Switch"

    const-string v30, "switchPadding"

    const-string v31, "setSwitchPadding()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v100

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v101, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.Switch"

    const-string v30, "textOff"

    const-string v31, "setTextOff()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v101

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v102, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.Switch"

    const-string v30, "textOn"

    const-string v31, "setTextOn()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v102

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v103, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.Switch"

    const-string v30, "thumbTextPadding"

    const-string v31, "setThumbTextPadding()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v103

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v104, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.Switch"

    const-string v30, "thumb"

    const-string v31, "setThumbDrawable()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v104

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v105, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.Switch"

    const-string v30, "track"

    const-string v31, "setTrackDrawable()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v105

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v106, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ToggleButton"

    const-string v30, "textOff"

    const-string v31, "setTextOff()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v106

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v107, Lcom/aide/uidesigner/N$a;

    const-string v29, "android.widget.ToggleButton"

    const-string v30, "textOn"

    const-string v31, "setTextOn()"

    sget-object v32, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v107

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v29, Lcom/aide/uidesigner/N$a;

    const-string v30, "android.widget.Spinner"

    const-string v31, "gravity"

    const-string v32, "setGravity()"

    sget-object v33, Lcom/aide/uidesigner/N$b;->j6:Lcom/aide/uidesigner/N$b;

    const-string v34, "android.view.Gravity"

    const/16 v35, 0x0

    invoke-direct/range {v29 .. v35}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v30, Lcom/aide/uidesigner/N$a;

    const-string v31, "android.widget.Spinner"

    const-string v32, "dropDownWidth"

    const-string v33, "setDropDownWidth()"

    sget-object v34, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v30 .. v34}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v31, Lcom/aide/uidesigner/N$a;

    const-string v32, "android.widget.Spinner"

    const-string v33, "dropDownHorizontalOffset"

    const-string v34, "setDropDownHorizontalOffset()"

    sget-object v35, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v31 .. v35}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v32, Lcom/aide/uidesigner/N$a;

    const-string v33, "android.widget.Spinner"

    const-string v34, "prompt"

    const-string v35, "setPrompt()"

    sget-object v108, Lcom/aide/uidesigner/N$b;->VH:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    move-object/from16 v4, v108

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v33, Lcom/aide/uidesigner/N$a;

    const-string v34, "android.widget.Spinner"

    const-string v35, "dropDownVerticalOffset"

    const-string v108, "setDropDownVerticalOffset()"

    sget-object v109, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v108

    move-object/from16 v4, v109

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v34, Lcom/aide/uidesigner/N$a;

    const-string v35, "android.widget.Spinner"

    const-string v108, "popupBackground"

    const-string v109, "setPopupBackgroundDrawable()"

    sget-object v110, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    move-object/from16 v2, v108

    move-object/from16 v3, v109

    move-object/from16 v4, v110

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v35, Lcom/aide/uidesigner/N$a;

    const-string v108, "android.widget.RatingBar"

    const-string v109, "numStars"

    const-string v110, "setNumStars()"

    sget-object v111, Lcom/aide/uidesigner/N$b;->u7:Lcom/aide/uidesigner/N$b;

    move-object/from16 v0, v35

    move-object/from16 v1, v108

    move-object/from16 v2, v109

    move-object/from16 v3, v110

    move-object/from16 v4, v111

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v108, Lcom/aide/uidesigner/N$a;

    const-string v109, "android.widget.RatingBar"

    const-string v110, "rating"

    const-string v111, "setRating()"

    sget-object v112, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v108 .. v112}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v109, Lcom/aide/uidesigner/N$a;

    const-string v110, "android.widget.RatingBar"

    const-string v111, "stepSize"

    const-string v112, "setStepSize()"

    sget-object v113, Lcom/aide/uidesigner/N$b;->gn:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v109 .. v113}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v110, Lcom/aide/uidesigner/N$a;

    const-string v111, "android.widget.RatingBar"

    const-string v112, "isIndicator"

    const-string v113, "setIsIndicator()"

    sget-object v114, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v110 .. v114}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v111, Lcom/aide/uidesigner/N$a;

    const-string v112, "android.widget.DatePicker"

    const-string v113, "calendarViewShown"

    const-string v114, "setCalendarViewShown()"

    sget-object v115, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v111 .. v115}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v112, Lcom/aide/uidesigner/N$a;

    const-string v113, "android.widget.DatePicker"

    const-string v114, "spinnersShown"

    const-string v115, "setSpinnersShown()"

    sget-object v116, Lcom/aide/uidesigner/N$b;->tp:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v112 .. v116}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v113, Lcom/aide/uidesigner/N$a;

    const-string v114, "android.widget.ListView"

    const-string v115, "divider"

    const-string v116, "setDivider()"

    sget-object v117, Lcom/aide/uidesigner/N$b;->J0:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v113 .. v117}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    new-instance v114, Lcom/aide/uidesigner/N$a;

    const-string v115, "android.widget.ListView"

    const-string v116, "dividerHeight"

    const-string v117, "setDividerHeight()"

    sget-object v118, Lcom/aide/uidesigner/N$b;->Hw:Lcom/aide/uidesigner/N$b;

    invoke-direct/range {v114 .. v118}, Lcom/aide/uidesigner/N$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/aide/uidesigner/N$b;)V

    const/16 v115, 0x6d

    move/from16 v0, v115

    new-array v0, v0, [Lcom/aide/uidesigner/N$a;

    move-object/from16 v115, v0

    const/16 v116, 0x0

    aput-object v6, v115, v116

    const/4 v6, 0x1

    aput-object v7, v115, v6

    const/4 v6, 0x2

    aput-object v8, v115, v6

    const/4 v6, 0x3

    aput-object v9, v115, v6

    const/4 v6, 0x4

    aput-object v10, v115, v6

    const/4 v6, 0x5

    aput-object v11, v115, v6

    const/4 v6, 0x6

    aput-object v12, v115, v6

    const/4 v6, 0x7

    aput-object v36, v115, v6

    const/16 v6, 0x8

    aput-object v37, v115, v6

    const/16 v6, 0x9

    aput-object v38, v115, v6

    const/16 v6, 0xa

    aput-object v39, v115, v6

    const/16 v6, 0xb

    aput-object v40, v115, v6

    const/16 v6, 0xc

    aput-object v41, v115, v6

    const/16 v6, 0xd

    aput-object v42, v115, v6

    const/16 v6, 0xe

    aput-object v43, v115, v6

    const/16 v6, 0xf

    aput-object v44, v115, v6

    const/16 v6, 0x10

    aput-object v45, v115, v6

    const/16 v6, 0x11

    aput-object v46, v115, v6

    const/16 v6, 0x12

    aput-object v47, v115, v6

    const/16 v6, 0x13

    aput-object v13, v115, v6

    const/16 v6, 0x14

    aput-object v48, v115, v6

    const/16 v6, 0x15

    aput-object v49, v115, v6

    const/16 v6, 0x16

    aput-object v50, v115, v6

    const/16 v6, 0x17

    aput-object v51, v115, v6

    const/16 v6, 0x18

    aput-object v52, v115, v6

    const/16 v6, 0x19

    aput-object v53, v115, v6

    const/16 v6, 0x1a

    aput-object v14, v115, v6

    const/16 v6, 0x1b

    aput-object v54, v115, v6

    const/16 v6, 0x1c

    aput-object v55, v115, v6

    const/16 v6, 0x1d

    aput-object v56, v115, v6

    const/16 v6, 0x1e

    aput-object v57, v115, v6

    const/16 v6, 0x1f

    aput-object v15, v115, v6

    const/16 v6, 0x20

    aput-object v58, v115, v6

    const/16 v6, 0x21

    aput-object v16, v115, v6

    const/16 v6, 0x22

    aput-object v59, v115, v6

    const/16 v6, 0x23

    aput-object v60, v115, v6

    const/16 v6, 0x24

    aput-object v61, v115, v6

    const/16 v6, 0x25

    aput-object v62, v115, v6

    const/16 v6, 0x26

    aput-object v63, v115, v6

    const/16 v6, 0x27

    aput-object v64, v115, v6

    const/16 v6, 0x28

    aput-object v65, v115, v6

    const/16 v6, 0x29

    aput-object v17, v115, v6

    const/16 v6, 0x2a

    aput-object v18, v115, v6

    const/16 v6, 0x2b

    aput-object v66, v115, v6

    const/16 v6, 0x2c

    aput-object v67, v115, v6

    const/16 v6, 0x2d

    aput-object v68, v115, v6

    const/16 v6, 0x2e

    aput-object v69, v115, v6

    const/16 v6, 0x2f

    aput-object v70, v115, v6

    const/16 v6, 0x30

    aput-object v71, v115, v6

    const/16 v6, 0x31

    aput-object v72, v115, v6

    const/16 v6, 0x32

    aput-object v73, v115, v6

    const/16 v6, 0x33

    aput-object v74, v115, v6

    const/16 v6, 0x34

    aput-object v19, v115, v6

    const/16 v6, 0x35

    aput-object v75, v115, v6

    const/16 v6, 0x36

    aput-object v76, v115, v6

    const/16 v6, 0x37

    aput-object v77, v115, v6

    const/16 v6, 0x38

    aput-object v78, v115, v6

    const/16 v6, 0x39

    aput-object v79, v115, v6

    const/16 v6, 0x3a

    aput-object v80, v115, v6

    const/16 v6, 0x3b

    aput-object v81, v115, v6

    const/16 v6, 0x3c

    aput-object v82, v115, v6

    const/16 v6, 0x3d

    aput-object v83, v115, v6

    const/16 v6, 0x3e

    aput-object v84, v115, v6

    const/16 v6, 0x3f

    aput-object v85, v115, v6

    const/16 v6, 0x40

    aput-object v20, v115, v6

    const/16 v6, 0x41

    aput-object v21, v115, v6

    const/16 v6, 0x42

    aput-object v22, v115, v6

    const/16 v6, 0x43

    aput-object v23, v115, v6

    const/16 v6, 0x44

    aput-object v86, v115, v6

    const/16 v6, 0x45

    aput-object v24, v115, v6

    const/16 v6, 0x46

    aput-object v25, v115, v6

    const/16 v6, 0x47

    aput-object v26, v115, v6

    const/16 v6, 0x48

    aput-object v27, v115, v6

    const/16 v6, 0x49

    aput-object v87, v115, v6

    const/16 v6, 0x4a

    aput-object v88, v115, v6

    const/16 v6, 0x4b

    aput-object v28, v115, v6

    const/16 v6, 0x4c

    aput-object v89, v115, v6

    const/16 v6, 0x4d

    aput-object v90, v115, v6

    const/16 v6, 0x4e

    aput-object v91, v115, v6

    const/16 v6, 0x4f

    aput-object v92, v115, v6

    const/16 v6, 0x50

    aput-object v93, v115, v6

    const/16 v6, 0x51

    aput-object v94, v115, v6

    const/16 v6, 0x52

    aput-object v95, v115, v6

    const/16 v6, 0x53

    aput-object v96, v115, v6

    const/16 v6, 0x54

    aput-object v97, v115, v6

    const/16 v6, 0x55

    aput-object v98, v115, v6

    const/16 v6, 0x56

    aput-object v99, v115, v6

    const/16 v6, 0x57

    aput-object v100, v115, v6

    const/16 v6, 0x58

    aput-object v101, v115, v6

    const/16 v6, 0x59

    aput-object v102, v115, v6

    const/16 v6, 0x5a

    aput-object v103, v115, v6

    const/16 v6, 0x5b

    aput-object v104, v115, v6

    const/16 v6, 0x5c

    aput-object v105, v115, v6

    const/16 v6, 0x5d

    aput-object v106, v115, v6

    const/16 v6, 0x5e

    aput-object v107, v115, v6

    const/16 v6, 0x5f

    aput-object v29, v115, v6

    const/16 v6, 0x60

    aput-object v30, v115, v6

    const/16 v6, 0x61

    aput-object v31, v115, v6

    const/16 v6, 0x62

    aput-object v32, v115, v6

    const/16 v6, 0x63

    aput-object v33, v115, v6

    const/16 v6, 0x64

    aput-object v34, v115, v6

    const/16 v6, 0x65

    aput-object v35, v115, v6

    const/16 v6, 0x66

    aput-object v108, v115, v6

    const/16 v6, 0x67

    aput-object v109, v115, v6

    const/16 v6, 0x68

    aput-object v110, v115, v6

    const/16 v6, 0x69

    aput-object v111, v115, v6

    const/16 v6, 0x6a

    aput-object v112, v115, v6

    const/16 v6, 0x6b

    aput-object v113, v115, v6

    const/16 v6, 0x6c

    aput-object v114, v115, v6

    sput-object v115, Lcom/aide/uidesigner/N;->gn:[Lcom/aide/uidesigner/N$a;

    sget-object v6, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    array-length v6, v6

    sget-object v7, Lcom/aide/uidesigner/N;->gn:[Lcom/aide/uidesigner/N$a;

    array-length v7, v7

    add-int/2addr v6, v7

    new-array v6, v6, [Lcom/aide/uidesigner/N$a;

    sput-object v6, Lcom/aide/uidesigner/N;->u7:[Lcom/aide/uidesigner/N$a;

    sget-object v6, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    const/4 v7, 0x0

    sget-object v8, Lcom/aide/uidesigner/N;->u7:[Lcom/aide/uidesigner/N$a;

    const/4 v9, 0x0

    sget-object v10, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v6, Lcom/aide/uidesigner/N;->gn:[Lcom/aide/uidesigner/N$a;

    const/4 v7, 0x0

    sget-object v8, Lcom/aide/uidesigner/N;->u7:[Lcom/aide/uidesigner/N$a;

    sget-object v9, Lcom/aide/uidesigner/N;->VH:[Lcom/aide/uidesigner/N$a;

    array-length v9, v9

    sget-object v10, Lcom/aide/uidesigner/N;->gn:[Lcom/aide/uidesigner/N$a;

    array-length v10, v10

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v6, Lcom/aide/uidesigner/N;->u7:[Lcom/aide/uidesigner/N$a;

    new-instance v7, Lcom/aide/uidesigner/M;

    invoke-direct {v7}, Lcom/aide/uidesigner/M;-><init>()V

    invoke-static {v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    sget-boolean v7, Lcom/aide/uidesigner/N;->EQ:Z

    if-eqz v7, :cond_1

    const-wide v8, -0x2bcfc5400f7211a3L    # -3.466598294562935E97

    const/4 v7, 0x0

    invoke-static {v6, v8, v9, v7}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v6
.end method

.method public constructor <init>()V
    .registers 7

    const-wide v4, 0x14a8bbe1c0800fe1L    # 3.761714741121719E-209

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v0, Lcom/aide/uidesigner/N;->tp:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x14a8bbe1c0800fe1L    # 3.761714741121719E-209

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Labcd/ApplicationUtils;->j6(JLjava/lang/Object;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/aide/uidesigner/N;->EQ:Z

    if-eqz v1, :cond_1

    invoke-static {v0, v4, v5, v3}, Labcd/ApplicationUtils;->j6(Ljava/lang/Throwable;JLjava/lang/Object;)V

    :cond_1
    throw v0
.end method
